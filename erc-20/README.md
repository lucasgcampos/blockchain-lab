## ERC-20 - XDev Token

**Exemplo de criação de um Token ERC-20.**



### Como executar?

1. Primeiro faço o build do contrato com o seguinte comando:

```shell
forge b
```

2. Inicialize sua blockchain local

```shell
anvil -b 10
```

a cada 10 segundos um bloco será minerado

3. Enviar o contrato para a blockchain

```shell
forge script script/Counter.s.sol:CounterScript \
--rpc-url "http://127.0.0.1:8545" \
--broadcast
```
Verifique se a url está correta, ela vem no log do passo 2.

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
