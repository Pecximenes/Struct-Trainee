def fatorial(num)
    fat = 1
    for i in 1..num
        fat *= i
    end
    return fat
end

def gera_array(num)
    array_sequencia = Array.new(num) {|i| i + 1.to_i}
    array_fatorial = []

    for i in array_sequencia
        if i % 2 != 0
            array_fatorial.push(fatorial(i))
        end
    end
    return array_sequencia, array_fatorial
end

print "Digite um número inteiro positivo: "
numero = gets.to_i
for f in gera_array(numero)
    p f
end