# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
categories_1 = ["数学", "物理学", "生物学", "ライフサイエンス", "工学"]
categories_2 = {
  "数学" => ["代数学", "幾何学", "解析学", "集合論", "情報科学", "確率論", "統計学"],
  "物理学" => ["素粒子物理学", "原子核物理学", "物性物理学", "宇宙物理学"],
  "生物学" => ["発生生物学", "細胞生物学", "分子生物学", "動物行動学", "集団遺伝学", "生態学"],
  "ライフサイエンス" => ["料理と科学", "生活と科学", "医学", "薬学", "歯学"],
  "工学" => ["情報工学", "機械工学", "電気電子工学", "流体力学"],
}

categories_1.each do |name|
  category = Category.create(name: name)
  categories_2[name].each do |name2|
    Category.create(name: name2, parent: category)
  end
end
