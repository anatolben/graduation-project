# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1g3v7ja24i6j6anc559"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1g3kbr3a6la5pjqdb31"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos_7_base" {
  default = ""
}

