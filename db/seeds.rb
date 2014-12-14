# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(account: 'gerbercj', repository: 'server', hosts: 'host1.thegerb.com')
Project.create(account: 'gerbercj', repository: 'event_service', hosts: 'host1.thegerb.com')
Project.create(account: 'gerbercj', repository: 'device_service', hosts: 'host1.thegerb.com')


