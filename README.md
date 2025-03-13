# Descrição

Repositório de exercícios para a matéria de compiladores 2025/01, contém exercícos em python.
Qualquer cópia destes exercicios pelos alunos cursantes da disciplina será considerada plágio.
Alunos devem somente utilizar o material fornecido como base para o desenvolvimento dos exercícios.

## Ferramentas

- [Python](https://www.python.org/)
- [Antlr](https://www.antlr.org/)

## Dependências

- [antlr4-python3-runtime](https://pypi.org/project/antlr4-python3-runtime/)
- [antlr4-tools](https://github.com/antlr/antlr4-tools)

Instalar com:
```
pip install antlr4-tools
```
## Gerando o parser

Para gerar o listener/visitor e o parser:

```
./generate.sh <gramatica> <listener|visitor>
```

### Exemplos

Gerando o visitor para Hello.g:

```
./generate.sh Hello/Hello.g visitor
```

Gerando o listener para Hello.g:

```
./generate.sh Hello/Hello.g listener
```
## Visualizando a Árvore

Para visualizar a árvore:

```
./tree.sh <gramática> <regra-inicial> <input.txt>?
```
Caso haja um <input.txt>, ele deve estar no diretorio python.

### Exemplo

Árvore de Expr.g com input.txt:
```
./tree.sh Expr/Expr.g root input.txt
```
![Screenshot](https://user-images.githubusercontent.com/12345678/1234567890-abcdef12-3456-7890-1234567890ab.png)

## Autor

- Nome: Arthur Silva Matias
- E-mail: arthur.matias@icomp.ufam.edu.br

