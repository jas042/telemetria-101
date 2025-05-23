# Exercício Módulo 2 :: Docker Compose

## Objetivo

Subir dois Webservers diferentes usando Docker Compose:
- **NGINX** na porta `8080`
- **Apache HTTPD** na porta `8081`

Testar os acesso com o navegador para a porta 8080 e 8081

Verificar os Logs de ambos os containers

Remover os containers

## Passos para executar

### 1) Subir dois Webservers (NGINX e Apache)

Já incluímos um `docker-compose.yml` com a seguinte configuração:

```yaml
version: '3.8'

services:
  nginx:
    image: nginx:latest
    ports:
      - "8080:80"
    container_name: nginx_server

  apache:
    image: httpd:latest
    ports:
      - "8081:80"
    container_name: apache_server
```

Na VM pode ser realizado o download com wget:

```yaml
wget https://raw.githubusercontent.com/jas042/telemetria-101/refs/heads/main/modulo_2/docker-compose.yml
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

### 2) Testar o acesso no navegador

Acesse os seguintes endereços:

- NGINX: http://<IP-da-VM>:8080
- Apache: http://<IP-da-VM>:8081

Você deve ver as páginas padrão de boas-vindas de cada servidor.

---

### 3) Verificar os logs dos containers

Use os comandos abaixo para visualizar os logs:

```bash
docker logs nginx_server
docker logs apache_server
```

Para ver os logs em tempo real:

```bash
docker logs -f nginx_server
docker logs -f apache_server
```
**CTRL+C para sair**

---

### 4) Remover os containers

Para parar e remover os containers criados:

```bash
docker-compose down
```

---

## Resultado Esperado

- Dois containers rodando com servidores distintos.
- NGINX na porta `8080` e Apache na `8081`.
- Logs disponíveis e containers removíveis com um comando.

---

## Dica Extra

Se quiser limpar **todos os recursos Docker** não utilizados:

```bash
docker system prune -a
```

> Isso remove **imagens, containers parados e redes não utilizadas**. Use com cautela.
