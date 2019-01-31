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

def criarTarefa(nome)
    tarefa = {name: nome, status: false}
    tarefa
end

opcao = 0
tarefas = []

while opcao != 5 do
    puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
    puts '[1] Inserir uma tarefa'
    puts '[2] Ver todas as tarefas'
    puts '[3] Buscar tarefa'
    puts '[4] Marcar tarefa como feita'
    puts '[5] Sair'
    puts
    print 'Opção escolhida: '
    opcao = lerOpcao()
    if opcao == 1
      print 'Digite sua tarefa: '
      nomeTarefa = gets.chomp()
      tarefa = criarTarefa(nomeTarefa)
      puts tarefa
      tarefas << tarefa
      puts
      puts 'Tarefa cadastrada: ' + tarefa[:name]
    elsif opcao == 2
        puts
        puts 'Tarefas: '
        tarefas.each_with_index do |item, index|
            imprimeItems(item[:name], index+1)
        end
    elsif opcao == 3
        puts
        print 'Digite o termo de busca: '
        busca = gets.chomp()
        soNomes = tarefas.map do |item| 
            item[:name]
        end
        itensEcontrados = buscaItems(soNomes, busca)
        itensEcontrados.each_with_index do |item, index|
            imprimeItems(item, index+1)
        end
    elsif opcao == 4
        puts 'As tarefas cadastradas são: '
        tarefas.each_with_index do |item, index|
            imprimeItems(item[:name], index+1)
        end
        print 'Escolha uma para marcar como feita: '
        indexEscolhido = gets.to_i - 1
        tarefas[indexEscolhido][:status] = true       
    elsif opcao == 5
        puts 'Saindo do sistema'
    else
      puts
      puts 'Opção inválida'
    end
end


