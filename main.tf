resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true

}

variable "parameters" {
  default = [
    { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
    { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.rdevopsb73.online/", type = "String" },
    { name = "prod.rds.endpoint", value = "prod-mysql.cluster-cbvsbeoyxek4.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "prod.backend.app_version", value = "1.0.0", type = "String" },
    { name = "prod.frontend.app_version", value = "1.0.0", type = "String" },

    ## Dev env
    { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.rdevopsb73.online/", type = "String" },

    #    ## Common env
    #    { name = "jenkins_password", value = "admin123", type = "String" },
    #    { name = "artifactory_username", value = "admin", type = "String" },
    #    { name = "artifactory_password", value = "Admin123", type = "String" }
  ]
}
## Note: Ideally we don't keep passwords in GIT REPOS, Those will be created manually.
##Secret management of creating secrets is most 100% of the time is manual