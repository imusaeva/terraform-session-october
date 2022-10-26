# Local is used for something that's repeated over and over again
# Warning : Do not overuse Locals.tf. It will make code complicated

# 1. Naming Standard
# 2. Tagging Standard / Common Tags


# Naming Standard :

# aws-ue1-nonprod-dev-cat-${resource_name}

# aws = cloud provider
# ue1 = region
# nonprod = Account
# dev = Environment
# cat = project
# ${resource_name} = asg, alb, route53, rds,etc

# Tagging Standard / Common Tags:
# common_tags + name tag should has every single resource

locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
  common_tags = {
    env     = var.env
    project = var.project
    team    = "DevOps"
    owner   = "Irina"
  }
}
