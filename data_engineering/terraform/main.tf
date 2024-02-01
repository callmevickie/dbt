terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create a VPC
resource "aws_vpc" "ahona" {
  cidr_block = var.cidr_block
}

#s3 bucket
resource "aws_s3_bucket" "ahonas_bucket" {
  bucket = var.bucket

  tags = {
    Name        = "bucket_"
    Environment = "Dev"
  }
}


#redshift cluster
resource "aws_redshift_cluster" "my_clust_red" {
 cluster_identifier = var.cluster_identifier
 database_name      = var.database_name
 master_username    = var.master_username
 master_password    = var.master_password
 node_type          = var.node_type
 cluster_subnet_group_name = "default"
 publicly_accessible     = false
 final_snapshot_identifier = "last-chance-snapshot"
}
