def gera_matriz_transposta(matriz)
    tamanho = matriz[0].length
    if tamanho % 2 != 0
        transposta = Array.new(tamanho-1) {Array.new}
        for linha in matriz
            linha.delete_at((tamanho-1) / 2)
        end
    else
        transposta = Array.new(tamanho-2) {Array.new}
        for linha in matriz
            linha.delete_at((tamanho-1)/2, (tamanho+1)/2)
        end
    end
    for i in 0...transposta.length
        for linha in matriz
            transposta[i].push(linha[i])
        end
    end
    return transposta
end

e1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [0, 1, 2]]
e2 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for linha in gera_matriz_transposta(e1)
    p linha
end