resource "local_file" "pet" {
  filename = "./pet.txt"
  content  = data.local_file.my_pet.content
}

data "local_file" "my_pet" {
  filename = "./my_pet.txt"
}