print "Digite seu nome: "
nome = gets
print "Digite sua idade: "
age = gets.to_i

if age >= 18
    puts "Está apto a dirigir"
else 
    puts "Não está apto a dirigir"
end
