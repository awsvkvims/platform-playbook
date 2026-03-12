locals {
  common_tags = merge(
    {
      platform    = var.platform_name
      environment = var.environment
      owner       = var.owner
      cost_center = var.cost_center
      managed_by  = var.managed_by
    },
    var.extra_tags
  )
}