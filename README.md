# DESCRIÇÃO

Repositório de exercícios para a matéria de compiladores 2025/01, contém exercícos em python.
Qualquer cópia destes exercicios pelos alunos cursantes da disciplina será considerada plágio.
Alunos devem somente utilizar o material fornecido como base para o desenvolvimento dos exercícios.

## Ferramentas

- [Python](https://www.python.org/)
- [Antlr](https://www.antlr.org/)

## Dependências

- [antlr4-python3-runtime](https://pypi.org/project/antlr4-python3-runtime/)

instalar com:
```
pip install antlr4-python3-runtime
```
## Execução

para gerar o listener/visitor e o parser:

```
./generate.sh <gramatica> <listener|visitor>
```

### Exemplos

gerando o visitor para Hello.g:

```
./generate.sh Hello/Hello.g visitor
```

gerando o listener para Hello.g:

```
./generate.sh Hello/Hello.g listener
```


## Autor

- Nome: Arthur Silva Matias
- E-mail: arthur.matias@icomp.ufam.edu.br

