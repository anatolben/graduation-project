output "int_ip_addr_node00_nginx" {
  value = "${yandex_compute_instance.node00.network_interface.0.ip_address}"
}

output "ext_ip_addr_node00_nginx" {
  value = "${yandex_compute_instance.node00.network_interface.0.nat_ip_address}"
}

output "int_ip_addr_node01_db01" {
  value = "${yandex_compute_instance.node01.network_interface.0.ip_address}"
}

output "int_ip_addr_node02_db02" {
  value = "${yandex_compute_instance.node02.network_interface.0.ip_address}"
}

output "int_ip_addr_node03_app" {
  value = "${yandex_compute_instance.node03.network_interface.0.ip_address}"
}

output "int_ip_addr_node04_gitlab" {
  value = "${yandex_compute_instance.node04.network_interface.0.ip_address}"
}

output "int_ip_addr_node05_monitoring" {
  value = "${yandex_compute_instance.node05.network_interface.0.ip_address}"
}

