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

### Exemplos

Árvore de Expr.g com input.txt:
```
./tree.sh Expr/Expr.g root Expr/input.txt
```
Arquivo:
![Screenshot](
https://private-user-images.githubusercontent.com/76797238/422145550-6ae907f2-0e12-420e-88a8-358a93a927f0.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDE4MzMwNTcsIm5iZiI6MTc0MTgzMjc1NywicGF0aCI6Ii83Njc5NzIzOC80MjIxNDU1NTAtNmFlOTA3ZjItMGUxMi00MjBlLTg4YTgtMzU4YTkzYTkyN2YwLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzEzVDAyMjU1N1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWVjMWM4ODAwNGE1NjQzNTBlZmNmZWJjOTZlOWU2YTNlMGQ1N2JmM2U1ZWY4NzMyYmQwNTM5YmI2YmY4NjNlZjAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.zg9_SgZ970_yNGTZMLC5Q_oHjwdRWLLZ9NueO12K3As)
Árvore:
![Screenshot](https://private-user-images.githubusercontent.com/76797238/422148048-acf9beea-f833-4099-b7f6-a83f963af3b1.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDE4MzMzMDQsIm5iZiI6MTc0MTgzMzAwNCwicGF0aCI6Ii83Njc5NzIzOC80MjIxNDgwNDgtYWNmOWJlZWEtZjgzMy00MDk5LWI3ZjYtYTgzZjk2M2FmM2IxLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzEzVDAyMzAwNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTc4YTBlMWJiODNhMjMwZThmNTcwZmQ0ZjYzN2Y5NjIxYTc1OTc2MzU1NmRhMGFhZmZjZGEzYzcyYTMxMTYwMjYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.F_fK6GQm815pvOAr6NGLdlgjjeY2C6BAugyUw_BeMM4)

Árvore de Expr.g com entrada do terminal:
```
./tree.sh Expr/Expr.g root
```
![Screeshot](https://private-user-images.githubusercontent.com/76797238/422150467-091a62b9-3742-479b-83d2-3f0b2794fa16.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDE4MzM4NDksIm5iZiI6MTc0MTgzMzU0OSwicGF0aCI6Ii83Njc5NzIzOC80MjIxNTA0NjctMDkxYTYyYjktMzc0Mi00NzliLTgzZDItM2YwYjI3OTRmYTE2LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzEzVDAyMzkwOVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTBiYTRiMzhhYWIzYmI5NjE1MDAxZTY1YWUxYjc2ODEzN2RjMjU5NTE0N2QwZGFjY2MzYzAxYjk1NzlmMzU4MWEmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.wCy1ZG7SH06NTZso4IjBDAnBcH436awKwD1HkxC1ryQ)
Digite a entrada no terminal aperte ```<Enter>``` e depos ```<Ctrl+d>```

Árvore:
![Screeshot](https://private-user-images.githubusercontent.com/76797238/422150372-00d8de09-969b-42d4-a7e1-c074f2293f7a.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDE4MzQwNzMsIm5iZiI6MTc0MTgzMzc3MywicGF0aCI6Ii83Njc5NzIzOC80MjIxNTAzNzItMDBkOGRlMDktOTY5Yi00MmQ0LWE3ZTEtYzA3NGYyMjkzZjdhLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzEzVDAyNDI1M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWE3NWMwM2RlYjE4YmQwMzhhYWY1OTdmNWQxNzQwMWNjYmU2MDYwMTM5NzU1YjZlY2JlNDUyZDI5NGExNmExZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.Wfvev_H7MlnRt01OQeo4D8RzxWLuecOtYxabChJcrD4)

## Autor

- Nome: Arthur Silva Matias
- E-mail: arthur.matias@icomp.ufam.edu.br

