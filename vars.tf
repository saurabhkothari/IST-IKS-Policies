variable "apikey" {
    type = string
    default = "613625a97564612d33345be4/613625a97564612d33345be9/6190aa257564612d30b9131c"
}

variable "secretkey" {
    type = string
    default = "../Secretkey.txt"
}
variable "endpoint" {
    type = string
    default = "https://intersight.com"
}

variable "ip_pool-name" {
    type = string
}

variable "ip_pool-starting-address" {
    type = string
}

variable "ip_pool-pool-size" {
    type = number
}

variable "ip_pool-netmask" {
    type = string
}

variable "ip_pool-gateway" {
    type = string
}

variable "ip_pool-primary-dns" {
    type = string
}

variable "sysconfig-policy-name" {
    type=string
}

variable "sysconfig-dns-servers" {
    type=list
}

variable "sysconfig-ntp-servers" {
    type=list
}

variable "sysconfig-domain-name" {
    type=string
}

variable "sysconfig-timezone" {
    type=string
}

variable "k8s_network-name" {
    type=string
}

variable "k8s_network-pod-cidr" {
    type=string
}

variable "k8s_network-service-cidr" {
    type=string
}

variable "k8s_network-cni" {
    type=string
}

variable "k8s_version-policy-name" {
    type = string
}
variable "k8s_version-version-name" {
    type = string
}

variable "k8s_version-description" {
    type=string
}

variable "k8s_infra-vcenterIP" {
    type= string
}

variable "k8s_infra-policyName" {
    type= string
}

variable "k8s_infra-interfaces" {
    type= list
}

variable "k8s_infra-clusterName" {
    type= string
}

variable "k8s_infra-datastoreName" {
    type= string
}

variable "k8s_infra-pwd" {
    type= string
}

variable "k8s_infra-resourcePoolName" {
    type= string
}

variable "k8s_worker-policyName" {
    type =string
}

variable "organization" {
    type = string
}
variable "tags" {
    type    = list(map(string))
}


