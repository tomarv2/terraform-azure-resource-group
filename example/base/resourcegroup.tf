module "resourcegroup" {
    source = "../.."

    email                                   = var.email
    teamid                                  = var.teamid
    prjid                                   = var.prjid
    client_id                               = var.client_id
    client_secret                           = var.client_secret
    subscription_id                         = var.subscription_id
    tenant_id                               = var.tenant_id

    add_resourcegroup                       = var.add_resourcegroup
    rg_name                                 = var.rg_name
    rg_location                             = var.rg_location
}