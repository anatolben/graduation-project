# Network
resource "yandex_vpc_network" "default" {
  name      = "my_net"
}
/*
resource "yandex_vpc_route_table" "nat-int" {
  network_id = "${yandex_vpc_network.default.id}"
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "${yandex_compute_instance.node00.network_interface.0.ip_address}"
  }
}
*/
resource "yandex_vpc_subnet" "default-a" {
  name = "my_subnet-a"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.57.0/24"]
}

resource "yandex_vpc_subnet" "default-b" {
  name = "my_subnet-b"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.58.0/24"]
}
