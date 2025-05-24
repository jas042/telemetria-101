# Exercício Módulo 4 :: Grafana

## Objetivo

Subir o Grafana usando docker na porta 3000 e explorar a ferramenta
- **Grafana** na porta `3000`

## Passos para executar

### 1) Subir o Grafana usando docker simples

Na VM execute o comando:

```yaml
docker run -d -p 3000:3000 grafana/grafana
```

### 2) Acessar o grafana no navegador

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

Navegue por todas as funcionalidades da ferramenta.

### 2) Quando finalizar remova o container do grafana

```
docker ps
docker rm <ID DO CONTAINER>
```

---

## Resultado Esperado

- Grafana rodando e pronto para uso
