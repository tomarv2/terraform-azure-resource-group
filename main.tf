resource "azurerm_resource_group" "resource_group" {
  count = var.deploy_resource_group ? 1 : 0

  name     = local.resource_group_name
  location = var.location
  tags     = merge(local.shared_tags)

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
