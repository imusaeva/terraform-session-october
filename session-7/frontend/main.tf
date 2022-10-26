resource "aws_sqs_queue" "main" {
  name = replace(local.name, "rtype", "sqs-1")
  tags = merge(local.common_tags, { Name = replace(local.name, "rtype", "sqs-1") })
}

resource "aws_sqs_queue" "main1" {
  name = replace(local.name, "rtype", "sqs-2")
  tags = merge(local.common_tags, { Name = replace(local.name, "rtype", "sqs-2") }) # map
}



