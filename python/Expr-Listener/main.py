from antlr4 import *
from ExprLexer import ExprLexer
from ExprParser import ExprParser
from EvalListener import EvalListener

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
# Cria e registra o listener
eval_listener = EvalListener()
walker = ParseTreeWalker()
walker.walk(eval_listener, tree)
# Imprime o resultado da avaliação
print(eval_listener.getResult())
