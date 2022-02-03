locals {
  shared_tags = tomap(
    {
      "Name"    = "${var.teamid}-${var.prjid}",
      "team"    = var.teamid,
      "project" = var.prjid
    }
  )

  resource_group_name = var.resource_group_name != null ? var.resource_group_name : "${var.teamid}-${var.prjid}"
}
