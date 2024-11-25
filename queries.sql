SELECT Cliente.Nome, COUNT(Pedido.ID_Pedido) AS Total_Pedidos
FROM Cliente
LEFT JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
GROUP BY Cliente.Nome;
SELECT Fornecedor.Nome AS Nome_Fornecedor, Produto.Nome AS Nome_Produto
FROM Fornecedor
JOIN Produto ON Fornecedor.ID_Fornecedor = Produto.ID_Fornecedor;
SELECT Nome, Quantidade_Estoque
FROM Produto
WHERE Quantidade_Estoque < 10;
SELECT ID_Pedido, Data_Pedido, Status
FROM Pedido
WHERE Status = 'Enviado'
ORDER BY Data_Pedido DESC;
SELECT Metodo, COUNT(ID_Pagamento) AS Total, SUM(Valor) AS Total_Valor
FROM Pagamento
WHERE Valor > 500
GROUP BY Metodo
HAVING COUNT(ID_Pagamento) > 1;
