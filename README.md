# govc
Repo with govc script to manage Vmware

To connect to your Vcenter, use these ENV variables : 

export GOVC_USERNAME='DOMAIN\superjulsimadmin' GOVC_PASSWORD='SuperAmazingPassword' GOVC_URL='mt-sles-vcenter.vodafonemalta.com' GOVC_INSECURE=true

If you have more than one datacenter, you will need to specify the name with this ENV variable : 

export GOVC_DATACENTER=NameDatacenter

