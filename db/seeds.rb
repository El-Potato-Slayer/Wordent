# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(name: 'Nappa', email: 'nappa@dappa.com', password: '123456', password_confirmation: '123456')
# User.create(name: 'Vegeta', email: 'vegeta@saiyan.com', password: '123456', password_confirmation: '123456')
# User.create(name: 'Hoppie', email: 'hoppie@doppie.com', password: '123456', password_confirmation: '123456')
Category.create(name: 'Music', priority: 2)
Category.create(name: 'Romance', priority: 5)
Category.create(name: 'Horror', priority: 3)
Category.create(name: 'Anime', priority: 4)
Category.create(name: 'Space', priority: 1)
# Article.create(title: 'My Sexy Guitar', text: 'Yes, you read that right. This is about my sexy guitar.', author_id: 1)
# Article.create(title: 'How my wife gave birth to me', text: 'I\'ll explain in extreme detail of how my wife gave birth to me :D', author_id: 3)
# Article.create(title: 'Hoppie eats dried eggs', text: 'A horrifying story about a man who eats dried eggs.', author_id: 1)
# ArticleCategory.create(article_id: 1, category_id: 1)
# ArticleCategory.create(article_id: 1, category_id: 2)
# ArticleCategory.create(article_id: 2, category_id: 2)
# ArticleCategory.create(article_id: 3, category_id: 3)
# Vote.create(user_id: 1, article_id:1)
# Vote.create(user_id: 1, article_id:3)
# Vote.create(user_id: 2, article_id:3)