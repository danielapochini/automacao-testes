#language: pt


# CONTEXTO PERMITE A VOCÊ ADICIONAR ALGUM CONTEXTO A TODOS OS CENÁRIOS EM
# UM ÚNICO RECURSO. UM CONTEXTO É COMO UM CENÁRIO SEM TÍTULO, QUE CONTÉM
# UMA SÉRIE DE ETAPAS. A DIFERENÇA OCORRE QUANDO ELE É EXECUTADO: 
# O CONTEXTO SERÁ EXECUTADO ANTES DE CADA UM DE SEUS CENÁRIOS.


Funcionalidade: Trabalhar com contexto.

Contexto:
Dado que eu tenha 10 laranjas na bolsa.

Cenário: Colocar uma quantidade de laranjas.
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se o total de laranjas na bolsa é 12

Cenário: Retirar uma quantidade de laranjas.
Quando eu tiro 2 laranjas da bolsa
Então eu verifico com quantas laranjas eu fiquei na bolsa
