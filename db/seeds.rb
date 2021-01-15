# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Music', priority: 1)
Category.create(name: 'Romance', priority: 2)
Article.create(title: 'My Sexy Guitar', text: 'Yes, you read that right. This is about my sexy guitar.')
Article.create(title: 'How my wife gave birth to me', text: 'I\'ll explain in extreme detail of how my wife gave birth to me :D')
ArticleCategory.create(article_id: 1, category_id: 1)
ArticleCategory.create(article_id: 1, category_id: 2)
ArticleCategory.create(article_id: 2, category_id: 2)