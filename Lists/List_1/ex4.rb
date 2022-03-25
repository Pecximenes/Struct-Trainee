def verifica_array(array)
    menor = nil
    maior = nil
    for i in array
        if array.index(i) == 0 && menor == nil && maior == nil
            menor = i
            maior = i
        elsif i < menor
            menor = i
        elsif i > maior
            maior = i
        end
    end
    hash_menor = {menor: menor, posicao: array.index(menor)}
    hash_maior = {maior: maior, posicao: array.index(maior)}
    array.sort!
    if array.length % 2 == 1
        posicao = (array.length - 1)/2
        hash_mediana = {mediana: array[posicao], posicao: posicao}
    else
        pos_menor = (array.length - 1) / 2
        pos_maior = (array.length + 1) / 2
        posicao = [pos_menor, pos_maior]
        mediana = ((array[pos_menor]).to_f + array[pos_maior]) / 2
        hash_mediana = {mediana: mediana, posicao: posicao}
    end
    array_final = [hash_menor, hash_maior, hash_mediana]
    p array_final
    p array
end

array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
array2 = [-10, -15, -20, 10, 20, 5]

verifica_array(array1)
puts
verifica_array(array2)
