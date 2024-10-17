variable "oauthclient_id"{
   type= string 
    description= "Client ID"
}

variable "oauthclient_secret"{
   type= string 
    description= "Client Secret"
}
variable "aws_region"{
   type= string 
    description= "Region"
}

variable "inboundcallflow_dir"{
   type= string 
    description= "Name of the callflow"
}

variable "dev_stage_intid"{
   type= string 
    description= "Integration ID for webservices"
    default=""
}

variable "dev_stage_Authorization"{
   type= string 
    description= "Authorization key "
    default=""
}


variable "west_stage_Authorization"{
   type= string 
    description= "Authorization key "
    default=""
}

variable "west_stage_intid"{
   type= string 
    description= "Integration ID for webservices"
    default=""
}

variable "dev_prod_intid"{
   type= string 
    description= "Integration ID for webservices"
    default=""
}

variable "dev_prod_Authorization"{
   type= string 
    description= "Authorization key "
    default=""
}
variable "dev_dr_intid"{
   type= string 
    description= "Integration ID for webservices"
    default=""
}

variable "dev_dr_Authorization"{
   type= string 
    description= "Authorization key "
    default=""
}

