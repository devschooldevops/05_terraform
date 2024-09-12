data "azurerm_client_config" "current" {}


data "template_file" "nginx" {
template = file("nginx.sh")
vars = {
rg = azurerm_resource_group.rg.name
computername = var.hostname
}
}