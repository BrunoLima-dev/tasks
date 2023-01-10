namespace :atividade do  

  desc "Adicionando dados ao banco de dados"
  task setup: :environment do
    puts "########################## Iniciando Task #########################"
    5.times do |i|
      Task.create!(
        title: Faker::Lorem.paragraph,
        done: [true, false].sample
      )
    end
    puts "########################## Task Concluida com sucesso #########################"    
  end

end

