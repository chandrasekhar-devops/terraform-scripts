resource "local_file" "pet" {
  filename = each.value
  for_each = toset(var.filename)
  content = " My Pet's name is ${var.pet_name}"
}