def primo_proximo(num)
   if num < 2
       return "Não foi possível encontrar um número primo"
   end
   for i in 2..num - 1
       if num % i == 0
           return primo_proximo(num - 1)
       end
   end
   return num
end

print "Digite um número inteiro positivo: "
numero = gets.to_i
puts primo_proximo(numero)
