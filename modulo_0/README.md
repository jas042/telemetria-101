Preparando o Windão
---

## Download das ferramentas Putty e Winscp

- [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
- [Winscp](https://winscp.net/eng/download.php)

Preparando a VM Linux
---
Utilize o [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) para acessar a VM Linux e na linha de comando execute:

```sh
apt-get update 
```

```sh
apt-get install git wget curl
```

Instalando o pacote Docker
---

Passos para instalação:

1) Copiar o arquivo "install_docker_ce.sh" para a VM Linux
```sh
wget  https://raw.githubusercontent.com/jas042/telemetria-101/refs/heads/main/modulo_0/install_docker_ce.sh
```

2) Executar: 

```sh
bash install_docker_ce.sh
```

Acompanhe a instalação e verifique as mensagens apresentadas.  

Ao final, serão apresentadas as versões do Docker e Docker Compose.

