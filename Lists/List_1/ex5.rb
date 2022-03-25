def escolhe_cardapio(cardapio)
    pedido = []
    pedido.push(cardapio[:entrada].sample)
    pedido.push(cardapio[:principal].sample)
    pedido.push(cardapio[:sobremesa].sample)
    return pedido
end

cardapio = {
    entrada: ["Salada Grega", "Sopa de letrinhas", "Camarão empanado", "Sushi", "Batata frita"], 
    principal: ["Churrasco", "Filé de frango", "Peixe grelhado", "Escondidinho de carne", "Lasanha"],
    sobremesa: ["Sorvete com bolo", "Pudim", "Salada de Fruta", "Mousse", "Torta alemã"]
}

p escolhe_cardapio(cardapio)