# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Code' }, { name: 'Social Justice' }, { name: 'Outside' }, { name: 'Food' }, { name: 'Other' }, { name: 'Projects' }])

tags = Tag.create([{ name: 'ruby' }, { name: 'rails' }, { name: 'css' }, { name: 'front-end' }, { name: 'penny' }, { name: 'vegan' }, { name: 'seattle' }, { name: 'hike' }])

Post.create(title: 'A First Post', content: 'This is some test content for my first post. This blog is a rails site written in ruby.', pub_dat: '2015-11-23 22:03:49 -0800', category_id: 1, :tags => Tag.where(:name => ['ruby', 'rails']))

Post.create(title: 'Hikes with Penny', content: 'My favortie thing to do with Penny is go for awesome hikes.', pub_dat: '2015-11-23 22:08:20 -0800 ', category_id: 3, :tags => Tag.where(:name => ['hike', 'penny']))
