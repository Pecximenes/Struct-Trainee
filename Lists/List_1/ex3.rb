def calcula_linha(num)
    soma = 2 ** (num - 1)
    if num == 0
        return 0
    end
    soma += calcula_linha(num - 1)
    return soma
end

print "Digite um número inteiro: "
numero = gets.to_i
puts calcula_linha(numero)
