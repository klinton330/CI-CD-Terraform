terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.49.1"
    }
  }
}
# Define variables for parameters 
variable "inqueueflowName"{}
variable "inqueueflowType"{}
variable "exportType" {
  default = "yaml"
}
variable "inqueueOutputDir"{}
variable "inqueueexportFileName" {}
variable "location" {}
variable "ex_oauthclient_id" {}
variable "ex_oauthclient_secret" {}


resource "null_resource" "inqueue_creation" {
  provisioner "local-exec" {
    command = join(" ", [
      "cd C:\\Users\\Klinton\\archy &&", 
      "archy export",
      "--flowName", var.inqueueflowName,
      "--flowType", var.inqueueflowType,
      "--exportType", var.exportType,
      "--outputDir", var.inqueueOutputDir,
      "--exportFileName", var.inqueueexportFileName,
      "--location", var.location,
      "--clientId", var.ex_oauthclient_id,
      "--clientSecret", var.ex_oauthclient_secret,
      "--flowVersion latest",
      "--force"
    ])
  }
  triggers = {
    always_run = timestamp()
  }
}