Preparando a VM Linux
---

## Computador para rodar os programas

Os scripts foram desenvolvidos e testados no Linux Debian 12 (64 bits).

Recomendamos utilizar o Debian ou sistemas baseados no Debian (Ubuntu, MX Linux, etc)

Instalando os pacote git, wget, curl
---

Na linha de comando execute da VM Linux execute o comando:

```sh
apt-get update 
```

```sh
apt-get install git wget curl
```

Instalando o pacote Docker
---

Passos para instala��o:

1) Copiar o arquivo "install_docker_ce.sh" para a VM Linux
```sh
wget  https://raw.githubusercontent.com/jas042/telemetria-101/refs/heads/main/modulo_0/install_docker_ce.sh
```

2) Executar: 

```sh
bash install_docker_ce.sh
```

Acompanhe a instala��o e verifique as mensagens apresentadas.  

Ao final, ser�o apresentadas as vers�es do Docker e Docker Compose.

