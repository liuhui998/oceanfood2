# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.destroy_all
User.destroy_all

# 同学们这是 种子测试数据，部署到生产环境后一定要自己改一下
User.create(email: "test@test.com", password: "12345678")
