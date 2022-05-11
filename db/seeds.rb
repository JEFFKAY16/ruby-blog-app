# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Volkswagen', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Volkswagen motor vehicle manufacturer headquartered in Wolfsburg, Lower Saxony, Germany.')
second_user = User.create(name: 'Audi', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Audi AG is a German automotive manufacturerd and headquartered in Ingolstadt, Bavaria, Germany.')
third_user = User.create(name: 'BMW', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Bayerische Motoren Werke AG, commonly referred to as BMW, is headquartered in Munich, Bavaria, Germany.')
fourth_user = User.create(name: 'Mercedes', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Mercedes-Benz, commonly referred to as Mercedes, is headquartered in Stuttgart, Baden-Württemberg, Germany.')

first_post = Post.create(author_id: 1, title: 'Paris', text: 'Also known as the Latin Quarter, the 5th arrondissement is home to the Sorbonne university and student-filled cafes. It\'s also known for its bookshops, including the famed Shakespeare & Company.')
second_post = Post.create(author_id: 1, title: 'London', text: 'London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations.')
third_post = Post.create(author_id: 2, title: 'Washington', text: 'Washington, DC, the U.S. capital, is a compact city on the Potomac River, bordering the states of Maryland and Virginia. It’s defined by imposing neoclassical monuments and buildings – including the iconic ones that house the federal government’s 3 branches:')
fourth_post = Post.create(author_id: 2, title: 'Seoul', text: 'Seoul, the capital of South Korea, is a huge metropolis where modern skyscrapers, high-tech subways and pop culture meet Buddhist temples, palaces and street markets. ')
fith_post = Post.create(author_id: 3, title: 'Rio', text: 'Rio de Janeiro is a huge seaside city in Brazil, famed for its Copacabana and Ipanema beaches, 38m Christ the Redeemer statue atop Mount Corcovado and for Sugarloaf Mountain, a granite peak with cable cars to its summit.')
sixith_post = Post.create(author_id: 3, title: 'Cairo', text: 'Cairo, Egypt\'s sprawling capital, is set on the Nile River. At its heart is Tahrir Square and the vast Egyptian Museum, a trove of antiquities including royal mummies and gilded King Tutankhamun artifacts. Nearby, Giza is the site of the iconic pyramids and Great Sphinx, dating to the 26th century BC.')

Comment.create(post_id: 1, author_id: 2, text: 'We love Paris' )
Comment.create(post_id: 1, author_id: 2, text: 'Paris, all love' )
Comment.create(post_id: 2, author_id: 4, text: 'Hey London' )
Comment.create(post_id: 2, author_id: 4, text: 'Regards to the queen' )
Comment.create(post_id: 3, author_id: 1, text: 'Donald Trump!!' )
Comment.create(post_id: 3, author_id: 1, text: 'Reminds me of President Barrack Obama' )
