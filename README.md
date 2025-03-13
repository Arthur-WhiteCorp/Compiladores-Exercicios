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
![Screenshot](
https://private-user-images.githubusercontent.com/76797238/422145550-6ae907f2-0e12-420e-88a8-358a93a927f0.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDE4MzMwNTcsIm5iZiI6MTc0MTgzMjc1NywicGF0aCI6Ii83Njc5NzIzOC80MjIxNDU1NTAtNmFlOTA3ZjItMGUxMi00MjBlLTg4YTgtMzU4YTkzYTkyN2YwLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzEzVDAyMjU1N1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWVjMWM4ODAwNGE1NjQzNTBlZmNmZWJjOTZlOWU2YTNlMGQ1N2JmM2U1ZWY4NzMyYmQwNTM5YmI2YmY4NjNlZjAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.zg9_SgZ970_yNGTZMLC5Q_oHjwdRWLLZ9NueO12K3As)
## Autor

- Nome: Arthur Silva Matias
- E-mail: arthur.matias@icomp.ufam.edu.br

