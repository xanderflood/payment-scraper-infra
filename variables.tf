variable "protonmail_username" {
  type = string
}
variable "protonmail_password" {
  type = string
}
variable "protonmail_label_name" {
  type = string
}
variable "telegram_bot_api_key" {
  type = string
}
variable "telegram_bot_api_chat_id" {
  type = string
}

variable "postgres_host" {
  type    = string
  default = "postgres"
}
variable "postgres_network_name" {
  type    = string
  default = "postgres"
}
variable "postgres_root_username" {
  type    = string
  default = "postgres"
}
variable "postgres_root_password" {
  type = string
}
