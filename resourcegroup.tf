locals{
  rgname = var.rg_name != null ? var.rg_name : "${var.teamid}-${var.prjid}"
}

resource "azurerm_resource_group" "resourcegroup" {
  count                              = var.add_resourcegroup ? 1 : 0

  name                               = local.rgname
  location                           = var.rg_location
  tags                               = merge(local.shared_tags)

  # Resource Group creation is eventually consistent, so add a delay.
  provisioner "local-exec" {
    command = <<EOT
      echo "sleeping for 30 seconds...";
      sleep 30;
      echo "completing sleep";
      finished=false
      while ! $finished; do
          az group exists -n ${local.rgname}
          finished=true
      done;
    EOT
    }
}


