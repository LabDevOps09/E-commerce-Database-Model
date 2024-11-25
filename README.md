# E-commerce Database Model 😊

## Descrição do Projeto
Este projeto visa modelar um banco de dados para um cenário de e-commerce, considerando requisitos específicos, como:
- Clientes podem ser Pessoa Física (PF) ou Jurídica (PJ).
- Suporte a múltiplas formas de pagamento por pedido.
- Controle de entrega com status e código de rastreamento.

O objetivo é criar um esquema lógico robusto, realizar a persistência de dados e realizar consultas para análise de informações.

## Estrutura do Banco de Dados
### Tabelas Principais
- **Cliente**: Armazena informações dos clientes (PJ ou PF).
- **Produto**: Gerencia o catálogo de produtos.
- **Pedido**: Registra os pedidos realizados pelos clientes.
- **Pagamento**: Registra as formas de pagamento utilizadas.
- **Entrega**: Controla status e rastreamento das entregas.

### Relacionamentos
- Um cliente pode realizar múltiplos pedidos.
- Um pedido pode ter múltiplos pagamentos.
- Cada pedido possui uma única entrega associada.

## Instruções
1. Execute o script `schema.sql` para criar o esquema do banco de dados.
2. Execute o script `data.sql` para inserir dados de exemplo.
3. Utilize as queries em `queries.sql` para explorar o banco de dados.

## Queries Incluídas
- Pedidos por cliente.
- Produtos com estoque baixo.
- Pedidos enviados ordenados por data.
- Pagamentos acima de determinado valor.
