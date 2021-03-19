locals {
  shared_tags = map(
    "name", "${var.teamid}-${var.prjid}",
    "team", var.teamid,
    "project", var.prjid

  )

  rgname = var.rg_name != null ? var.rg_name : "${var.teamid}-${var.prjid}"
}