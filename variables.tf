# --------------------------------------------------
# Environment & Region Settings
# --------------------------------------------------
variable "region" {
  default = "us-east-1"
}

variable "ENV" {
  type    = string
  default = "dev"
}

# --------------------------------------------------
# Lambda Configuration
# --------------------------------------------------
variable "LAMBDA_PYTHON_VERSION" {
  type    = string
  default = "python3.13"
}

variable "LAMBDA_JAVASCRIPT_VERSION" {
  type    = string
  default = "nodejs18.x"
}

# --------------------------------------------------
# Cognito Configuration
# --------------------------------------------------
variable "COGNITO_GROUP_LIST" {
  type    = string
  default = "customer"
}

variable "IAM_COGNITO_ASSUMABLE_ROLE_EXTERNAL_ID" {
  default = "ghU968996890"
  type    = string
}

variable "WEBAPP_DNS" {
  default = "mydomain.com"
}
variable "WEBAPP_CERT" {
  type    = string
  default = "JKJs"
}
variable "WEBAPP_CERT_ARN" {
  type    = string
  default = "kjsn"
}
variable "RESEND_API_KEY" {
  default = "JJJ"
}

# --------------------------------------------------
# MongoDB Atlas
# --------------------------------------------------
variable "MONGODB_URI" {
  default = "mongodb+srv://cloud_team_user:somethingrandom123@cluster0.889oilx.mongodb.net/SavenestDB?retryWrites=true&w=majority&appName=Cluster0"
}

data "aws_caller_identity" "name" {

}

# variable "TF_STATE_BUCKET" {
#   type    = string
#   default = "m4ace-tf-state-bucket"
# }

# variable "CI_CD_BUCKET" {
#   type    = string
#   default = "aws-csean-scanned-bucket"
# }

# variable "m4ace-Terraform-Lock" {
#   type    = string
#   default = "m4ace-Lock-TF"
# }