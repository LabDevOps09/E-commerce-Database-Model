INSERT INTO Cliente (Nome, Tipo, CPF_CNPJ, Email, Telefone) 
VALUES ('Empresa X', 'PJ', '12345678000199', 'empresa@x.com', '11999999999');

INSERT INTO Produto (Nome, Preco, Quantidade_Estoque) 
VALUES ('Produto A', 100.00, 50);

INSERT INTO Pedido (ID_Cliente, Data_Pedido, Status) 
VALUES (1, '2024-11-25', 'Enviado');

INSERT INTO Pagamento (Metodo, Valor, Data_Pagamento) 
VALUES ('Cartão de Crédito', 100.00, '2024-11-25');

INSERT INTO PedidoPagamento (ID_Pedido, ID_Pagamento) 
VALUES (1, 1);

INSERT INTO Entrega (ID_Pedido, Status, Codigo_Rastreamento) 
VALUES (1, 'Entregue', 'ABC123456789');
