print "Informe a sua renda: R$"
renda = gets.to_f
case renda
when 0.00..2000.00
    renda = "Isento"
when 2000.01..3000.00
    renda *= 0.08
when 3000.01..4500.00
    renda *= 0.18
when 4500.00..
    renda *= 0.28
end

if renda.kind_of?String
    puts renda
else
    puts "R$ %.2f" %[renda]
end
