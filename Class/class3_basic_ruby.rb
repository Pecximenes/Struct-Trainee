#* Tipos de Variáveis

a = 2 # Números Inteiros -> Integer (int)
b = 5.2 # Números decimais -> Float
c = false # true or false -> Boolean
d = "Hello, world!" # Caracter ("", '') -> String
e = :"Hello, world!" # Caracter imutável (Necessita :, pode ter "", '', sem aspas para variável sem espaço) -> Symbol


#* Declarando Variáveis

# Ruby é uma linguagem dinamicamente tipada, usamos método class para indetificar a classe da variável
puts a.class
puts b.class
puts c.class
puts d.class
puts e.class


#* Método de Entrada

f = gets # gets é uma função de entrada, recebe como padrão string com quebra de linha
g = gets.chomp # chomp -> Ignora quebra de linha
h = gets.to_i # to_i -> Transforma a entrada em int, caso não seja número retorna 0
i = gets.to_f # to_f -> Transforma a entrada em float, caso não seja número retorna 0.0


#* Métodos de Saídas

p f # Imprime junto com o método inspect do elemento (debug), com quebra de linha
puts g # Imprime o conteúco com uma quebra de linha
print h # Imprime o conteúdo sem quebra de linha
puts "Número decimal: #{i}!" # Insere uma variável no meio da string, obrigatório aspas duplas


#*Operações Aritméticas

j = 10 + 2 # Soma
k = 10 - 2 # Subtração
l = 10 * 2 # Multiplicação
m = 10 / 2 # Divisão
n = 10 % 2 # Resto da divisão
o = 10 ** 2 # Potência
j += 2 # Acrescenta o valor em relação ao valor obtido anteriormente na variável, de acordo com a operação antes do igual


#* Operações Relacionais

p = 6 == 2 # Igual
q = 6 != 2 # Diferente
r = 6 > 2 # Maior
s = 6 < 2 # Menor
t = 6 >= 2 # Maior ou igual
u = 6 <= 2 # Menor ou igual
v = 6 === 2 # Operador de subsunção (Verifica ser o valor da direita pode ser incluído no valor da esquerda)


#* Operações Lógicas

w = p && q # Sinal lógico e (&& ou and)
x = r || s # Sinal lógico ou (|| ou or)
y = t ^ u # Sinal lógico ou exclusivo
z = ! v # Sinal lógico negado (! ou not)


#* Estrutura de Decisão - Condicionais
# Estrutura que verifica a validade verdadeira de uma condição para poder executar um determinado conjunto de código

if (j > o)
    puts "j é maior que o!"
elsif (j == o)
    puts "j é igual a o!"
else
    puts "j é menor que o!"
end


#* Estrutura de Decisão - Unless
# Estrutura oposta ao if/elsif/else, onde execulta quando a validade é falsa de uma condição, semelhante ao "if not"
#? Existe uma estrutura semelhante ao elsif/else no caso do unless?

unless l < 100
    puts "l é maior que 100"
end
unless l < 1
    puts "l é maior que 1"
end


#* Estrutura de Decisão - Case
# Semelhante a condição if, porém com uso focado em multiplas condições

print "Informe a sua idade:"
idade = gets.to_i
case idade
when 0..12
    puts "Você é uma criança"
when 13..17
    puts "Você é um adolescente"
else
    puts "Você é um adulto"
end


#* Estruturas de Repetição - while

contador = 0
while contador < 10
    puts contador
    contador += 1
end


#* Estruturas de Repetição - until

contador = 15
until contador == 0
    puts contador
    contador -= 1
end


#* Estruturas de Repetição - for
# Acrescetnta o método .step para indicar quantos passos deseja-se fazer

for i in (4..13).step(3)
    puts i
end


#* Funções
# Para criar uma variável global, é necessário um @ antes da variável

@numero = 21
def isPar?(numero)
    if numero % 2 == 0
        @numero -= 5
        return true
    else
        @numero += 3
        return false
    end
end
puts isPar?(@numero)
puts @numero
