namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "ChengFei",
                 email: "chengfei@cumt.edu.cn",
                 password: "fei901024",
                 password_confirmation: "fei901024",
                 admin:true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
