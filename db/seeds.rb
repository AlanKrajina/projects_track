alan = User.create(username: "Alan", email: "alan@gmail.com", password: "password")
john = User.create(username: "John", email: "john@gmail.com", password: "password")

Project.create(name: "Sinatra App", content: "text text text text text text text ", completion: "2019", user_id: alan.id)
Project.create(name: "Rails App", content: "text2 text2 text2 text2 text2 text2 text2 ", completion: "2020", user_id: john.id)

