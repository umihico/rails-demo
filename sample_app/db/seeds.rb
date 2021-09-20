# メインのサンプルユーザーを1人作成する
User.create!(name: 'Example User',
             email: 'example@railstutorial.org',
             password: 'foobar',
             password_confirmation: 'foobar')

# 追加のユーザーをまとめて生成する
99.times do |n|
  email = "example-#{n + 1}@railstutorial.org"
  name = FFaker::Name.name
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
