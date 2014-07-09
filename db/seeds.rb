# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def food_image_file(name)
  p = File.join(Rails.root,"test","images","foods",name)
  File.open(p)
end

Food.destroy_all
User.destroy_all

(1..3).each {
  f1 = Food.create!(:image => food_image_file("hy_orange.jpg"), :name => "汇源果汁", :price => 4, :memo => "好喝")
  f2 = Food.create!(:image => food_image_file("jdb.jpg"), :name => "加多宝", :price => 4, :memo => "来一罐")
  f3 = Food.create!(:image => food_image_file("lf_spring.jpg"), :name => "农夫山泉", :price => 2, :memo => "有点甜")
  f4 = Food.create!(:image => food_image_file("maidong.jpg"), :name => "脉动", :price => 4, :memo => "提提神")
  f5 = Food.create!(:image => food_image_file("pepsi.jpg"), :name => "百式可乐", :price => 3, :memo => "汽水")
}
# 同学们这是 种子测试数据，部署到生产环境后一定要自己改一下
User.create(email: "test@test.com", password: "12345678")
