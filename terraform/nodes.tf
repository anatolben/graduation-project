resource "yandex_compute_instance" "node00" {
  name                      = "node00"
  zone                      = "ru-central1-a"
  hostname                  = "snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node00"
      type        = "network-hdd"
      size        = "10"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
#    ip_address = var.ingress_ip
    nat        = true
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "node01" {
  name                      = "node01"
  zone                      = "ru-central1-a"
  hostname                  = "db01.snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node01"
      type        = "network-ssd"
      size        = "10"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "node02" {
  name                      = "node02"
  zone                      = "ru-central1-a"
  hostname                  = "db02.snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node02"
      type        = "network-ssd"
      size        = "10"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "node03" {
  name                      = "node03"
  zone                      = "ru-central1-a"
  hostname                  = "app.snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node03"
      type        = "network-hdd"
      size        = "10"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "node04" {
  name                      = "node04"
  zone                      = "ru-central1-a"
  hostname                  = "gitlab.snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 8
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node04"
      type        = "network-ssd"
      size        = "30"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "node05" {
  name                      = "node05"
  zone                      = "ru-central1-a"
  hostname                  = "monitoring.snark.ml"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id    = "${var.centos_7_base}"
      name        = "root-node05"
      type        = "network-hdd"
      size        = "20"
    }
  }
  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-a.id}"
  }
  metadata = {
    ssh-keys = "centos:${file("./id_rsa.pub")}"
  }
}
