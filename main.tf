variable "list_example" {
  description = "A list of strings"
  type        = list(number)
}

variable "map_example" {
  description = "A map of strings"
  type        = map(string)
}

output "processed_numbers" {
  value = sort([
    for n in var.list_example : n * 2
    if (n * 2) % 2 == 0
  ])
}

output "print_my_map" {
  value = var.map_example
}
