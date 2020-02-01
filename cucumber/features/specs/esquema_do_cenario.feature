#language: pt

# ESQUEMA DE CENÁRIO NOS PERMITE RODAR VÁRIOS CENÁRIOS COM A MESMA
# FUNCIONALIDADE QUE ONDE APENAS MUDAM O VALOR.
# UM ESQUEMA DE CENÁRIO É FORMADO POR UMA TABELA E <>(PARÂMETROS
# DELIMITADOS).
# UM ESQUEMA DE CENÁRIO FORNECEM UM MODELO QUE NUNCA É EXECUTADO
# DIRETAMENTE. UM ESQUEMA DO CENÁRIO É EXECUTADO UMA VEZ PARA CADA LINHA
# NA SEÇÃO DE EXEMPLOS ABAIXO DELA (EXCETO PARA A PRIMEIRA LINHA QUE É O
# CABEÇALHO)

Funcionalidade: Calculo de multiplicação

Esquema do Cenário: Fazer uma multiplicação
Quando eu multiplico minhas <laranjas> pelo <valor>
Entao eu vejo qual <resultado> da multiplicação.

Exemplos:

|laranjas|valor|resultado|
|10      |5    |50       |
|10      |3    |30       |
|10      |2    |20       |
|10      |10   |100      |