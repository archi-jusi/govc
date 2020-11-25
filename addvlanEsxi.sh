#!/bin/bash

NameVlan='vlan_test'
VlanID='200'
VwitchName='vSwitch1'

for i in 1 2 3 4 21 22 23 24
do
echo mt-esx-esxName$i.mtx.vodafonemalta.com
govc host.esxcli --host.dns=mt-esx-esxName$i.mtx.vodafonemalta.com  network vswitch standard portgroup add -p $NameVlan -v $VwitchName
govc host.esxcli --host.dns=mt-esx-esxName$i.mtx.vodafonemalta.com  network vswitch standard portgroup set -p $NameVlan --vlan-id $VlanID

done

