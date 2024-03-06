## Counter

**Exemplo de um smart contract que comunica com a blockchain para aumentar o valor (+1), diminuir o valor (-1) ou configurar uma valor qualquer até 2^8.**



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


4. Interagir com o contrato

Consultar valor:
```shell
cast call --private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" \
<endereço_do_contrato_passo_3> "getValue()(int)"
```

Aumentar o valor:
```shell
cast send \
--private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" <endereço_do_contrato_passo_3> "increase()"
```

Diminuir o valor:
```shell
cast send \
--private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" <endereço_do_contrato_passo_3> "decrease()"
```

Adicionar qualquer valor valor:
```shell
cast send \
--private-key <sua_chave_privada_do_passo_2> \
--rpc-url "http://127.0.0.1:8545" <endereço_do_contrato_passo_3> "setAnyValue(int8)" 99
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
