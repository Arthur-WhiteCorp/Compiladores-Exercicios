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
./generate.sh <gramática> <listener|visitor>
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

### Exemplos

Árvore de Expr.g com input.txt:
```
./tree.sh Expr/Expr.g root Expr/input.txt
```
Arquivo:
![alt text](https://i.imgur.com/1ItsaZD.png)

Árvore:
![image](https://i.imgur.com/YYKUqPo.png)
Árvore de Expr.g com entrada do terminal:
```
./tree.sh Expr/Expr.g root
```
![Screeshot](https://i.imgur.com/yCKJy5H.png)
Digite a entrada no terminal aperte ```<Enter>``` e depois ```<Ctrl+d>```

Árvore:
![Screeshot](https://i.imgur.com/xCGXLnS.png)


## Como usar:

Suponha que queremos executar o main.py do Exemplo Hello:

1. Ir para a raiz do repositorio: ```cd Compiladores-Exercicios```;
2. Localizar sua gramática neste caso ela se encontra em: ```/python/Expr/Expr.g```;
3. Gerar o Parser e o Visitor/Listener: ```./generate.sh Expr/Expr.g visitor```;
4. Executar o main.py: ```python Expr/main.py```;
5. Visualizar a Árvore da gramática: ```./tree.sh Expr.g root Expr/input.txt``` (Opicional).




## Autor

- Nome: Arthur Silva Matias
- E-mail: arthur.matias@icomp.ufam.edu.br

