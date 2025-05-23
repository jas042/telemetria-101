# Exercício Módulo 6 :: Telegraf

## Objetivo

1) Subir o Telegraf para coletar dados MODBUS e verifique nos logs da execução os dados que foram coletados

Os dados de saida devem aparecer conforme o exemplo abaixo:

```
{"fields":{"pulsos_energia_ativa":9},"name":"modbus","tags":{"latitude":"-8.05384","longitude":"-35.95463","medidor":"sensor_alvo","name":"sensor_demo","slave_id":"1","type":"input_register"},"timestamp":1748021447}
```

## Passos para executar

### 0) No arquivo telegraf.conf altere o endereço do Master para o endereço informado na aula:

```
linha 16  controller = "<INSIRA AQUI O ENDEREÇO DO MASTER>"
```
** Faça o download do arquivo, altere-o na máquina Windows e depois copie para VM Linux através do Winscp**

### 1) Subir o Telegraf usando docker simples

Na VM execute o comando:

```bash
docker run --rm -v $(pwd)/telegraf.conf:/etc/telegraf/telegraf.conf:ro telegraf --config /etc/telegraf/telegraf.conf -once
```

Explicação dos parâmetros:

```
--rm: Remove o container após a execução.

-v $(pwd)/telegraf.conf:/etc/telegraf/telegraf.conf:ro: Faz o bind do arquivo telegraf.conf local (na pasta atual) para dentro do container, como somente leitura (:ro).

telegraf: Imagem oficial do Telegraf (pode especificar a versão, como telegraf:1.29).

--config /etc/telegraf/telegraf.conf: Especifica o arquivo de configuração dentro do container.

-once: Executa uma coleta única e depois encerra.
```

### 2) Ler os logs de saida de comando e verificar a quantidade de pulsos medidos
---

## Resultado Esperado

- Uma coleta pontual do Telegraf com saída STDOUT para visualização dos dados
