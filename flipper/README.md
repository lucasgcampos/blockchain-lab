## Flipper

**Exemplo de um smart contract que comunica com a blockchain para alterar o valor de uma variável booleana (true|false)**



### Como executar?

1. Primeiro faço o build do contrato com o seguinte comando:

```shell
forge b
```

2. Inicialize sua blockchain local

```shell
anvil -b 15
```

3. Enviar o contrato para a blockchain

```shell
forge script script/Flipper.s.sol:FlipperScript \
> --rpc-url "http://127.0.0.1:8545" \
> --broadcast
```
Verifique se a url está correta, ela vem no log do passo 2.


4. Interagir com o contrato

Consultar valor:
```shell
cast call --private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" \
"<endereço_do_contrato_passo_3>" "getValue()(bool)"
```

Alterar valor:
```shell
cast call --private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" \
"endereço_do_contrato_passo_3" "flip()"
```

#### Teste

```shell
forge t
```

### Ajuda

https://book.getfoundry.sh/

```shell
$ forge --help
$ anvil --help
$ cast --help
```
