#apikey=""
#secretkey="Secretkey.txt"
ssh_user="iksadmin"
#ssh_key=""
ip_pool-name="iks-ippool"
ip_pool-starting-address="172.16.0.200"
ip_pool-pool-size=50
ip_pool-netmask="255.255.252.0"
ip_pool-gateway="172.16.0.2"
ip_pool-primary-dns = "10.76.101.130"
sysconfig-policy-name="iks-sysConfig"
sysconfig-dns-servers=["10.76.101.130"]
sysconfig-ntp-servers=["ntp.esl.cisco.com"]
sysconfig-domain-name = "dc.css"
sysconfig-timezone = "America/New_York"
k8s_network-name="iks-k8sNetwork"
k8s_network-pod-cidr="100.90.0.0/16"
k8s_network-service-cidr="100.80.0.0/16"
k8s_network-cni="Calico"
k8s_version-policy-name="iks-version"
k8s_version-version-name="1.20.14-iks.0"
k8s_version-description="version"
k8s_infra-policyName="iks-infraConfig"
k8s_infra-interfaces=["saukotha-shramu-dc|app|dc"]
k8s_infra-clusterName="shramu-test"
k8s_infra-datastoreName="datastore52_hdd"
k8s_infra-pwd="Cisco\"!\"123"
k8s_infra-resourcePoolName="saukotha_rp"
k8s_worker-policyName="iks-k8s-vm-instance"
organization="default"
tags = [
  {
    "key" : "managed_by"
    "value" : "Terraform"
  },
  {
    "key" : "owner"
    "value" : "saukotha"
  }
]
