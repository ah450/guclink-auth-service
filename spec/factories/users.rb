FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    password { Faker::Internet.password }
    verified true

    factory :student do
      email { (0...10).map { ('a'..'z').to_a[rand(26)] }.join + '@student.guc.edu.eg' }
    end

    factory :teacher do
      email { (0...10).map { ('a'..'z').to_a[rand(26)] }.join + '@guc.edu.eg' }

      factory :super_user do
        super_user true
      end
    end
  end
end
