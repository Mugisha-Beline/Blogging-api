provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "app" {
  name   = "app"
  image  = "ubuntu-20-04-x64"
  size   = "s-1vcpu-1gb"
  region = "nyc1"
}

output "droplet_ip" {
  value = digitalocean_droplet.app.ipv4_address
}
