CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Tipo ENUM('PJ', 'PF'),
    CPF_CNPJ VARCHAR(14) UNIQUE NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(15)
);

CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Preco DECIMAL(10, 2),
    Quantidade_Estoque INT
);

CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT NOT NULL,
    Data_Pedido DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Pagamento (
    ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Metodo VARCHAR(50),
    Valor DECIMAL(10, 2),
    Data_Pagamento DATE
);

CREATE TABLE PedidoPagamento (
    ID_Pedido INT,
    ID_Pagamento INT,
    PRIMARY KEY (ID_Pedido, ID_Pagamento),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Pagamento) REFERENCES Pagamento(ID_Pagamento)
);

CREATE TABLE Entrega (
    ID_Entrega INT PRIMARY KEY AUTO_INCREMENT,
    ID_Pedido INT NOT NULL,
    Status VARCHAR(50),
    Codigo_Rastreamento VARCHAR(255),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);
