# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Thomas', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico. Age, 28')
second_user = User.create(name: 'Mirriam', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland. Age, 34')

first_post = Post.create(author_id: 1, title: 'Paris', text: 'This is my first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
second_post = Post.create(author_id: 1, title: 'Lusaka', text: 'This is my second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
third_post = Post.create(author_id: 1, title: 'Washington', text: 'This is my third post. Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
fourth_post = Post.create(author_id: 1, title: 'Seol', text: 'This is my fourth post. Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
fith_post = Post.create(author_id: 1, title: 'Rio De Janero', text: 'This is my fith post. Lorem Ipsum is simply dummy text of the printing and typesetting industry.')

Comment.create(post_id: 1, author_id: 2, text: 'Hi Tom!' )
Comment.create(post_id: 1, author_id: 2, text: 'Hiya Tom!' )
Comment.create(post_id: 1, author_id: 2, text: 'O\'lla Tom!' )
Comment.create(post_id: 1, author_id: 2, text: 'Hey Tom!' )
Comment.create(post_id: 1, author_id: 2, text: 'Hello Tom!' )
Comment.create(post_id: 1, author_id: 2, text: 'Amigo Tom!' )
