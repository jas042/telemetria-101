# Exercício Final :: Solução Completa

## Objetivo

1) Subir um banco de dados Mysql
2) Subir o Telegraf para coletar dados MODBUS e indexar no banco de Dados Mysql
3) Conectar o Grafana ao banco de dados MySQL
4) Usando o Explorer do Grafana Verificar se os dados estão no banco de dados
5) Construir um Dashboard e um Grafico de Pulsos de Energia

## Passos para executar

---
### 1) No arquivo telegraf.conf altere o endereço do Master para o endereço informado na aula:

```
linha 16  controller = "<INSIRA AQUI O ENDEREÇO DO MASTER>"
```
** Faça o download do arquivo, altere-o na máquina Windows e depois copie para VM Linux através do Winscp**

---
### 2) Usando o arquivo docker-compose.yaml subir a solução completa com o comando:

Já incluímos um `docker-compose.yml` com a configuração completa apresentada em aula:

Na VM pode ser realizado o download com wget:

```yaml
wget https://raw.githubusercontent.com/jas042/telemetria-101/refs/heads/main/modulo_final/docker-compose.yml
```

Para iniciar os serviços, execute:

```bash
docker-compose up -d
```

Verifique se os containers estão rodando com o comando:

```bash
docker-compose ps
```
---
### 3) Acessar o grafana no navegador

Acesse os seguintes endereços:

- Grafana: 

```
http://<IP-da-VM>:3000
```

Você deve ver a páginas padrão de boas-vindas Grafana.

- Entre com a credencial padrão:

```
usuario: admin
senha: admin
```
---
### 4) Adicionar o banco de dados no Grafana

1. No Grafana vá para a área de Data Sources
No menu lateral esquerdo, selecione "Connections" --> "Data sources".

Clique no botão “Add data source” (Adicionar fonte de dados).

2. Escolha o tipo de banco
Na lista de opções, clique em "MySQL".

3. Preencha as informações de conexão
Preencha os seguintes campos conforme abaixo:

```
Name      mysql
Host	  mysql:3306
Database  telegraf
User	  telegraf
Password  telegraf
```

4. Clique em “Save & Test”
Isso salvará a configuração e testará a conexão com o MySQL.

Se estiver tudo certo, verá a mensagem "Database Connection OK" ✅

5. Pronto!
Agora você pode criar painéis (dashboards) no Grafana usando essa fonte de dados MySQL.

---
### Criar um novo Dashboard no Grafana
No menu lateral, clique → selecione Dashboard

1. Clique em “+Create Dashboard” e em "Add visualization"

2. Selecione a fonte de dados
No topo, escolha a fonte de dados MySQL que você configurou anteriormente

3. Escreva a query SQL
Na aba Query Builder, selecione a query como esta:

```
Dataset: telgraf
Table: modbus
Column: *
```

3. Clique em "Run Query" e visualize o gráfico

Veja se os dados aparecem corretamente no gráfico

4. Personalize o painel
No painel lateral direito:

Dê um nome para o gráfico (ex: Energia Ativa - Pulso)

Ajuste o eixo Y, cores, rótulos etc. conforme desejado

5. Salvar o Dashboard
Clique no ícone de disquete no topo direito → selecione Save dashboard

Dê um nome (ex: Monitoramento Energia) e clique em Save e em "Back to Dashboard"

6. Bom trabalho, visualize os dados em tempo real, no menu superior é possivel alterar o tempo de visualizacao da coleta.
---
## Resultado Esperado

- Um sistema de coleta com Telegraf e indexação no banco de dados Mysql e observação gráfica no Grafana
