namespace :dev do
  desc "TODO"
  task setup: :environment do

    %x(rails db:create db:migrate)
  
      puts "Cadastrando marcas"
      5.times do |m|
        Marca.create!(
          name: Faker::Vehicle.manufacture,
        )
      end
      puts (Marca.all)

      puts "Cadastrando Modelos..."
      10.times do |i| 
        Modelo.create!(
          name: Faker::Vehicle.make_and_model,
          description: Faker::Vehicle.version,
          year: Faker::Vehicle.year,
          marca_id: 1
        )
      end
      puts "Modelos cadastrados"

  end
end

