variable "region"{
   description = "The AWS region."
   default = "us-east-1"
   type = string
}

variable "access_key"{
    type=string
    description="access key for my aws account"
}

variable "secret_key"{
    type=string
    description="secret access key for my aws account"
}

variable "cidr_block"{
    description = "cidr_block"
}

variable "bucket"{
    type=string
    description="bucket name"
}

variable "cluster_identifier"{
    type=string
    description="redshift cluster identifier"
}

variable "database_name"{
    type=string
    description = "redshift database name"
}

variable "node_type" {
     type=string
     description = "redshift node type"
}

variable "master_username"{
    type=string
    description="redshift master username"
}

variable "master_password"{
    type=string
    description="redshift master password"
}
 
 