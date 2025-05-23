# Exerc�cio M�dulo 0 :: Ferramentas

## Objetivo

Configurar o ambiente com as ferramentas essenciais

## Passos para executar

### Preparando o Wind�o

#### Download das ferramentas Putty e Winscp

- [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
- [Winscp](https://winscp.net/eng/download.php)

### Preparando a VM Linux
Utilize o [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) para acessar a VM Linux e na linha de comando execute:

```sh
apt-get update 
```

#### Instalando os pacotes essenciais
```sh
apt-get install git wget curl
```

#### Instalando o pacote Docker

Passos para instala��o:

Copiar o arquivo "install_docker_ce.sh" para a VM Linux
```sh
wget  https://raw.githubusercontent.com/jas042/telemetria-101/refs/heads/main/modulo_0/install_docker_ce.sh
```

Executar: 
```sh
bash install_docker_ce.sh
```

Acompanhe a instala��o e verifique as mensagens apresentadas.  

Ao final, ser�o apresentadas as vers�es do Docker e Docker Compose.

## Validado as instala��es

Execute os comando abaixo e verifique as saidas:

```sh
docker version
git version
wget --help
curl -h
```
