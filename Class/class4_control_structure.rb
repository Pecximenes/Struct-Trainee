#* Arrays
# Semelhante a listas em Python
# Notação [], elementos internos separados por vírgulas
cores = ["verde", "vermelho", "amarelo", "azul"]

## Inserindo novos elementos
cores.push("preto") # Insere elemento ao final do Array
cores.insert(1, "branco", "cinza") # Insere na posição 1 os elementos informados
puts cores

## Deletando elementos
# Os métodos abaixo retornam o elemento removido
cores.delete_at(6) # Retira o valor na posição 6 do Array
cores.pop # Retira o último elemento do Array
cores.shift # Retira o primeiro elemento do Array

## Acessando Arrays através de loops
for cor in cores
    puts cor
end

## Verificando valores únicos
puts cores.uniq

## Selecionando valores pares utilizando função lambda
puts cores.select {|i| i[0] == "v"}
puts cores.reject {|i| i[0] == "v"}

## Acesando intervalos de Arrays
print cores[0...3] # Não considera o elemento de índice 3
print cores[0..3] # Considera o elemento de índice 3

# Sorteando elementos do Array
print cores.sort # Realiza o método sem alterar a variável
cores.sort! # Realiza o método alterando a variável
print cores

#* Hash
# Semelhante ao dicioonário em Python
# Notação {}, chaves e valores juntos, recomenda-se utilizar Symbol para chaves
limao = {tipo:"fruta", cor:"verde", gosto:"ácido"}

## Acessando chaves existentes
puts limao.keys

## Acessando valores existentes
puts limao.values

## Adicionando novo elemento
limao[:tamanho] = "pequeno"

## Removendo valores
limao.delete(:cor)

## Obtendo o tamanho do hash
limao.size

##Verificar se é vazio
limao.empty?