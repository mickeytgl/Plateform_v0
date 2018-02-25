# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  def get_file_name(file_name)
    image_src = File.join(Rails.root, "app/assets/images/seed_avatars/#{file_name}.jpg")
    src_file = File.new(image_src)
    return src_file
  end

users = User.create([
  {
  :name => "miguel",
  :email => "miguel@example.com",
  :password => "password",
  :avatar => get_file_name("miguel"),
  },
  {
  :name => "maddie",
  :email => "maddie@example",
  :password => "password",
  :avatar => get_file_name("mila"),
  },
    {
  :name => "aurelie",
  :email => "aurelie@example.com",
  :password => "password",
  :avatar => get_file_name("aurelie"),
  },
  {
  :name => "felix",
  :email => "felix@example.com",
  :password => "password",
  :avatar => get_file_name("felix"),
  },
  {
  :name => "torben",
  :email => "torben@example.com",
  :password => "password",
  :avatar => get_file_name("torben"),
  },
  {
  :name => "kira",
  :email => "kira@example.com",
  :password => "password",
  :avatar => get_file_name("kira"),
  },
  {
  :name => "luis",
  :email => "luis@example.com",
  :password => "password",
  :avatar => get_file_name("luis"),
  },
  {
  :name => "lisa",
  :email => "lisa@example.com",
  :password => "password",
  :avatar => get_file_name("lisa"),
  },
  {
  :name => "karina",
  :email => "karina@example.com",
  :password => "password",
  :avatar => get_file_name("karina"),
  },
  {
  :name => "gustavo",
  :email => "gustavo@example.com",
  :password => "password",
  :avatar => get_file_name("gustavo"),
  },
  {
  :name => "eugenio",
  :email => "eugenio@example.com",
  :password => "password",
  :avatar => get_file_name("maddie"),
  }
])

dinners = Dinner.create([
  {
    :address => "23 Avenue de Bruxelles, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 5,
    :user => User.where(name: "miguel").first,
    :guest => 10,
  },
  {
    :address => "17-1 Rue Jules Rame, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.where(name: "maddie").first,
    :guest => 2,
  },
  {
    :address => "36 Rue de Tilleuls, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 7,
    :user => User.where(name: "eugenio").first,
    :guest => 5,
  },
  {
    :address => "Avenue d'Edimbourg, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 15,
    :user => User.where(name: "aurelie").first,
    :guest => 7,
  },
  {
    :address => "Rue Bertauld, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.where(name: "kira").first,
    :guest => 6,
  },
  {
    :address => "Rue Rene Perrotte, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 3,
    :user => User.where(name: "aurelie").first,
    :guest => 4,
  },
  {
    :address => "45 Avenue du Six Juin, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 4,
    :user => User.where(name: "lisa").first,
    :guest => 100,
  },
  {
    :address => "29 Avenue Capitaine Georges Guynemer, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 5,
    :user => User.where(name: "torben").first,
    :guest => 4,
  },
  {
    :address => "2 Avenue Capitaine Georges Guynemer, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 7,
    :user => User.where(name: "gustavo").first,
    :guest => 5,
  }
])
