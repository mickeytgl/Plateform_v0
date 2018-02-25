# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
  :name => "miguel",
  :email => "miguel@example.com",
  :password => "password",
  },
  {
  :name => "maddie@example.com",
  :email => "maddie@example.com@example.com",
  :password => "password",
  },
    {
  :name => "aurelie",
  :email => "aurelie@example.com",
  :password => "password",
  },
  {
  :name => "felix",
  :email => "felix@example.com",
  :password => "password",
  },
  {
  :name => "juliette",
  :email => "juliette@example.com",
  :password => "password",
  },
  {
  :name => "kira",
  :email => "kira@example.com",
  :password => "password",
  },
  {
  :name => "luis",
  :email => "luis@example.com",
  :password => "password",
  },
  {
  :name => "lisa",
  :email => "lisa@example.com",
  :password => "password",
  },
  {
  :name => "emily",
  :email => "emily@example.com",
  :password => "password",
  },
  {
  :name => "gustavo",
  :email => "gustavo@example.com",
  :password => "password",
  },
  {
  :name => "eugenio",
  :email => "eugenio@example.com",
  :password => "password",
  }
])

dinners = Dinner.create([
  {
    :address => "23 Avenue de Bruxelles, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "17-1 Rue Jules Rame, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "36 Rue de Tilleuls, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "Avenue d'Edimbourg, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "Rue Bertauld, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "Rue Rene Perrotte, Caen, France",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "45 Avenue du Six Juin, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "29 Avenue Capitaine Georges Guynemer, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  },
  {
    :address => "2 Avenue Capitaine Georges Guynemer, 14000 Caen, Frankreich",
    :time => "2020-07-07 00:00:00",
    :description => "descripton",
    :cost => 10,
    :user => User.first,
    :guest => 100,
  }
])