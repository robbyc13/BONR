# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Below, input the different json files from each shelter 
jsonfile = File.read('output1.json')

#Parse the Json file into a datahash
data_hash = JSON.parse(jsonfile)

dog_attributes=data_hash

dog_name=dog_attributes['name']
dog_name.split(",")
dog_gender=dog_attributes['gender']
dog_gender.split(",")
dog_age=dog_attributes['age']
dog_age.split(",")
dog_breed=dog_attributes['breed']
dog_breed.split(",")
dog_picture=dog_attributes['img']
dog_picture.split(",")

count=0
#Loop through each 
while count<dog_name.length 


Dog.create(name:dog_name[count], age:dog_age[count], gender:dog_gender[count],breed:dog_breed[count],photo_link:dog_picture[count])


count=count+1
end



