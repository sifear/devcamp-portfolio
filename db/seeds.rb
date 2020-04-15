# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
   Topic.create!(
       title: "Topic #{topic}"
   )
end

10.times do |blog|
   Blog.create!(
       title: "My Blog post #{blog}",
       body: "It is a long established fact that a reader will be 
       distracted by the readable content of a page when looking at its layout. 
       The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, 
       as opposed to using 'Content here, content here', making it look like readable English. 
       Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, 
       and a search for 'lorem ipsum' will uncover many web sites still in their infancy. 
       Various versions have evolved over the years, sometimes by accident, sometimes on purpose
      (injected humour and the like).       ",
      topic_id: Topic.last.id
   )
end

puts "10 blog posts created."

5.times do |skill|
   Skill.create!(
       title: "Rails #{skill}",
       percent_utilised: 15
   )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio item #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "It is a long established fact that a reader will be 
          distracted by the readable content of a page when looking at its layout. 
          The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, 
          as opposed to using 'Content here, content here', making it look like readable English. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/300x150"
    )
 end

 1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio item #{portfolio_item}",
        subtitle: "Angular",
        body: "It is a long established fact that a reader will be 
          distracted by the readable content of a page when looking at its layout. 
          The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, 
          as opposed to using 'Content here, content here', making it look like readable English. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/300x150"
    )
 end

 puts "9 skills created"

 3.times do |technology|
    Portfolio.last.technologies.create!(
       name: "Technology #{technology}"
   ) 
end

puts "3 technologies created"