resource "azurerm_resource_group" "rg" {
  count    = 5
  name     = "yashaswi-${count.index + 1}"
  location = "west us"
}
