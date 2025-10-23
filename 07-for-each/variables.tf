variable "filename" {

  default = [
    
    "./dogs.txt",
    "./cats.txt"
  ]
}

variable "pet_name" {
  description = "Name of your pet"
  type        = string
  default     = "Puppy"
}

