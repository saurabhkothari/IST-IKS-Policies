provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}
terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.22"
    }
  }
}


module "ip_pool" {
  source           = "terraform-cisco-modules/iks/intersight//modules/ip_pool"
  version          = "1.0.2"
  name             = var.ip_pool-name
  starting_address = var.ip_pool-starting-address
  pool_size        = var.ip_pool-pool-size
  netmask          = var.ip_pool-netmask
  gateway          = var.ip_pool-gateway
  primary_dns      = var.ip_pool-primary-dns
  org_name = var.organization
  tags     = var.tags
}

module "network" {
  source      = "terraform-cisco-modules/iks/intersight//modules/k8s_network"
  version          = "1.0.2"
  policy_name = var.sysconfig-policy-name
  dns_servers = var.sysconfig-dns-servers
  ntp_servers = var.sysconfig-ntp-servers
  domain_name = var.sysconfig-domain-name
  timezone    = var.sysconfig-timezone
  org_name    = var.organization
  tags        = var.tags
}

module "k8s_version" {
  source         = "terraform-cisco-modules/iks/intersight//modules/version"
  version          = "2.2.0"
  policyName     = var.k8s_version-policy-name
  iksVersionName = var.k8s_version-version-name
  org_name = var.organization
  tags     = var.tags
}

module "infra_config_policy" {
  source = "terraform-cisco-modules/iks/intersight//modules/infra_config_policy"
  version           = "1.0.2"
  device_name       = var.k8s_infra-vcenterIP
  name              = var.k8s_infra-policyName
  vc_portgroup      = var.k8s_infra-interfaces
  vc_cluster        = var.k8s_infra-clusterName
  vc_datastore      = var.k8s_infra-datastoreName
  vc_password       = var.k8s_infra-pwd
  #vc_resource_pool  = var.k8s_infra-resourcePoolName
  org_name          = var.organization
  tags     = var.tags

}

data "intersight_organization_organization" "organization" {
  name = var.organization
}

resource "intersight_kubernetes_virtual_machine_instance_type" "masterinstance" {

  name      = var.k8s_worker-policyName
  cpu       = 4
  memory    = 16386
  disk_size = 40
  tags     = var.tags
  
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.organization.results.0.moid
  }
}
