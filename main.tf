variable "list_example" {
  description = "A list of strings"
  type        = list(number)
  default = ["1", "2", "3"]
}

variable "map_example" {
  description = "A map of strings"
  type        = map(string)
}

output "manipulated_list" {
  value = sort([for item in var.list_example : upper(item)])
}

output "print_my_map" {
  value = var.map_example
}
