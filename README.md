# govc
Repo with bash script using govc to manage Vmware Esxi host and resource. 

This script required to have govmomi installed. 

https://github.com/vmware/govmomi

To connect to your Vcenter, use these ENV variables : 
```bash
export GOVC_USERNAME='DOMAIN\superjulsimadmin' GOVC_PASSWORD='SuperAmazingPassword' GOVC_URL='mt-sles-vcenter.vodafonemalta.com' GOVC_INSECURE=true
```
If you have more than one datacenter, you will need to specify the name with this ENV variable : 
```bash
export GOVC_DATACENTER=NameDatacenter
```
If you want to test and you don't have a Vcenter, you can used vcsim which is part of govmomi to simulate a vCenter and ESXi API. 

https://github.com/vmware/govmomi/tree/master/vcsim

To simulate a Vcenter with 2 datacenters and 10 Vms: 

```bash
/usr/local/bin# vcsim -dc 2 -folder 1 -ds 4 -pool 2 -app 1 -vm 10 &
[1] 26805
usr/local/bin# export GOVC_URL=https://user:pass@127.0.0.1:8989/sdk GOVC_SIM_PID=26805
``` 

To connect with Govc :

```bash
export GOVC_URL=https://user:pass@127.0.0.1:8989/sdk GOVC_SIM_PID=26805 GOVC_INSECURE=true
```

To test that you are connected :

```bash
root@mt-ub-terform:/usr/local/bin# govc about
Name:         VMware vCenter Server (govmomi simulator)
Vendor:       VMware, Inc.
Version:      6.5.0
Build:        5973321
OS type:      linux-amd64
API type:     VirtualCenter
API version:  6.5
Product ID:   vpx
UUID:         dbed6e0c-bd88-4ef6-b594-21283e1c677f
```
