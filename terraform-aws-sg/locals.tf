locals {
  common_tags = {
    project_name = var.project
    environment  = var.environment
    Terraform    = true
  }
  sg_final_tags = merge(
    var.sg_tags, # if you dont want overide given by user you ca keep this sg_tags in first then values can override
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
  )
}
