# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = Category.create([{ name: '技术', icon: 'fa fa-laptop' , sort: 1, is_lock: true }, { name: '产品', icon: 'fa fa-tasks' , sort: 2, is_lock: true }, { name: '设计', icon: 'fa fa-photo' , sort: 3, is_lock: true }, { name: '运营', icon: 'fa fa-line-chart' , sort: 4, is_lock: true }, { name: '市场', icon: 'fa fa-pie-chart' , sort: 5, is_lock: true }, { name: '销售', icon: 'fa fa-cny' , sort: 6, is_lock: true }, { name: '职能', icon: 'fa fa-paste' , sort: 7, is_lock: true }, { name: '其他', icon: 'fa fa-address-book-o' , sort: 8, is_lock: true }])
