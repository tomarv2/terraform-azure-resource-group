resource "azurerm_resource_group" "resource_group" {
  for_each = {for rg in var.resource_group_settings : rg.name => rg}

    name = each.value.name
    location = each.value.location
    tags = merge(local.shared_tags)

  /*
  # Resource Group creation is eventually consistent, so add a delay.
  provisioner "local-exec" {
    command = <<EOT
      echo "sleeping for 30 seconds...";
      sleep 30;
      echo "completing sleep";
      finished=false
      while ! $finished; do
          az group exists -n ${local.resource_group_name}
          finished=true
      done;
    EOT
  }
  */
}
