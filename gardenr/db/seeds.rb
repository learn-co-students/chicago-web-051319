# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
mike = User.create(name: "Michael")
Tool.create(name: "rake", user: mike, condition: "good")
