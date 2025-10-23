resource "local_file" "pet" {
  filename = var.filename[count.index]

  count = length(var.filename)

  content = " My Pet's name is ${var.pet_name}"
}