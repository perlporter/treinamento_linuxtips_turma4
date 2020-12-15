provider "aws" {
  region = "sa-east-1"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "terraform-linuxtips-iac"
    key    = "terraform-test.tfstate"
    region = "sa-east-1"
  }
  required_providers {
    aws = {
      version = "~> 2.27.0"
      source  = "hashicorp/aws"
    }
  }
}
