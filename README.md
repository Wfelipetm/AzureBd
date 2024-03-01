# AzureBd
 Banco de dados criado na Azure microsoft


## Tabela de Clientes

- **Descrição:** Armazena informações de clientes, incluindo ID, nome, empresa, endereço e contato.

## Tabela de Motoristas

- **Descrição:** Contém informações sobre motoristas, incluindo ID, nome, número da CNH, endereço e contato.

## Tabela de Pedidos

- **Descrição:** Representa pedidos com detalhes como ID do pedido, ID do cliente, ID do motorista, descrição do pedido, data de entrega e status do pedido. Restrições de chave estrangeira vinculam a tabela às tabelas `Clientes` e `Motoristas`.

Este script configura um banco de dados SQL básico com três tabelas: `Clientes`, `Motoristas` e `Pedidos`. Cada tabela possui atributos específicos e há relacionamentos entre elas usando chaves estrangeiras. O script também inclui dados de exemplo e operações SQL básicas para inserção, atualização, seleção e exclusão de registros.
