from antlr4 import *
from ExprLexer import ExprLexer
from ExprParser import ExprParser
from EvalVisitor import EvalVisitor

# Carregar a entrada do terminal
input_stream = InputStream(input('? '))
# Criar um lexer
lexer = ExprLexer(input_stream)
# Criar um fluxo de tokens a partir do lexer - CommonTokenStream eh uma classe de antlr4
token_stream = CommonTokenStream(lexer)
# Criar um parser com o fluxo de tokens
parser = ExprParser(token_stream)
# Chamar o metodo inicial do parser
tree = parser.root()
# Chamar o visitor passando a Arvore de Parser como parametro
visitor = EvalVisitor()
visitor.visit(tree)
