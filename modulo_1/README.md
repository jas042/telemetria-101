# Exercício Módulo 1 :: Docker

Subir um container NGINX na porta 8080, testar o acesso via navegador, criar um volume local mapeado e remover o container após os testes.

# Subir container NGINX na porta 8080

```bash
docker run -d --name nginx-test -p 8080:80 nginx
```

Isso fará com que o NGINX rode em segundo plano (`-d`), expondo a porta 80 da máquina para a porta 80 do container.

## 🌐 Acessar via navegador

Abra o navegador e acesse:

```
http://<IP-da-VM>:8080
```

Substitua `<IP-da-VM>` pelo IP da sua máquina ou servidor. Você deverá visualizar a página padrão do NGINX.

## Verifique os logs do container para visualizar seu request
```bash
docker logs nginx-test
```

## Remover o container

Após os testes, remova o container com os comandos:

```bash
docker stop nginx-test
docker rm nginx-test
```

## Mapear um diretório local para dentro do container

1. Crie um diretório local na sua máquina:

```bash
mkdir ~/nginx-html
```

2. Adicione um arquivo `index.html` de exemplo:

```bash
echo "<h1>Sabadão com Docker e NGINX!</h1>" > ~/nginx-html/index.html
```

3. Execute o container mapeando este diretório para o diretório de arquivos do NGINX (`/usr/share/nginx/html`):

```bash
docker run -d --name nginx-volume -p 8080:80 -v ~/nginx-html:/usr/share/nginx/html nginx
```

4. Teste acessando via navegador:

```
http://<IP-da-VM>:8080
```

Deverá aparecer a mensagem **"Sabadão com Docker e NGINX!"**.

## Verifique os logs do container para visualizar seu request
```bash
docker logs nginx-volume
```

## Verificar o volume montado dentro do container
Entre no container:

```bash
docker exec -it nginx-volume bash
```

Liste os arquivos do diretório mapeado:

```bash
ls /usr/share/nginx/html
```

Você deverá ver o arquivo `index.html` listado.

## Remover o container após os testes com volume

```bash
docker stop nginx-volume
docker rm nginx-volume
```
