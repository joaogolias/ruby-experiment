def lerOpcao()
    gets.to_i
end

def imprimeItems(item, index) 
    print "##{index} - "
    puts item
end

def buscaItems(lista, busca)
    itensEncontrados = []
    lista.each do |item|
        if item.downcase.include? busca.downcase
            itensEncontrados << item
        end
    end
    itensEncontrados
end

opcao = 0
tarefas = []

while opcao != 4 do
    puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
    puts '[1] Inserir uma tarefa'
    puts '[2] Ver todas as tarefas'
    puts '[3] Buscar tarefa'
    puts '[4] Sair'
    puts
    print 'Opção escolhida: '
    opcao = lerOpcao()
    if opcao == 1
      print 'Digite sua tarefa: '
      tarefa = gets.chomp()
      tarefas << tarefa
      puts
      puts 'Tarefa cadastrada: ' + tarefa
    elsif opcao == 2
        puts
        puts 'Tarefas: '
        tarefas.each_with_index do |item, index|
            imprimeItems(item, index+1)
        end
    elsif opcao == 3
        puts
        print 'Digite o termo de busca: '
        busca = gets.chomp()
        itensEcontrados = buscaItems(tarefas, busca)
        itensEcontrados.each_with_index do |item, index|
            imprimeItems(item, index+1)
        end
    elsif opcao == 4
        puts 'Saindo do sistema'
    else
      puts
      puts 'Opção inválida'
    end
end


