Loja Online - Segurança e Gestão de Banco de Dados (Sec.loja-virtual.sql)

Este repositório contém um script SQL completo para a criação, estruturação, população e gerenciamento de permissões/controle de acesso (DCL) de um banco de dados para uma loja virtual fictícia (loja_online_seg).

 Tecnologias Utilizadas

Banco de Dados: MySQL / MariaDB

Linguagem: SQL (DDL, DML, DCL)

 Estrutura do Banco de Dados

O banco de dados loja_online_seg é composto por três tabelas principais:

produto: Armazena os itens disponíveis na loja (ID, nome, preço e estoque).

cliente: Armazena os dados cadastrais dos clientes (ID, nome, e-mail único e cidade).

pedido: Relaciona clientes e produtos, controlando as compras realizadas, quantidades e o status atual do pedido (com chaves estrangeiras para cliente e produto).

 Gerenciamento de Usuários e Permissões (DCL)

O script demonstra boas práticas de segurança no MySQL, criando usuários específicos com privilégios restritos de acordo com suas funções:

site_loja: Acesso voltado para a aplicação web (consulta de produtos e registro de pedidos).

suporte: Acesso ao atendimento ao cliente (consulta e atualização de dados de clientes e pedidos).

financeiro: Acesso amplo de consulta (SELECT) para auditoria e relatórios financeiros.

Também são demonstrados comandos de controle avançado, como:

Atribuição de privilégios (GRANT)

Revogação de privilégios (REVOKE)

Bloqueio de contas de usuário (ACCOUNT LOCK)

Remoção de usuários (DROP USER)

 Como Executar o Script

Certifique-se de ter um servidor MySQL ou MariaDB rodando em sua máquina.

Abra o seu cliente MySQL preferido (MySQL Workbench, DBeaver, HeidiSQL ou via terminal CLI).

Copie e execute o conteúdo do arquivo Sec.loja-virtual.sql passo a passo ou por completo.

