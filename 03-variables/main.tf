resource "local_file" "my_pet" {
  filename = var.filename
  content   = "My favorite pet is ${random_pet.my_random_pet.id}"
  depends_on = [ 
    random_pet.my_random_pet
  ]
}

resource "random_pet" "my_random_pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
} 
