# AutomationShell

## 1.Important
This contains in total 10 scripts which will help automate the creation of a virtual machine(vm) on Microsoft Azure, each script can be executed individually though it is not recommend due to do so unless you understand how to set up a virtual network on the cloud due to ordering of the files. These scripts hava been tested on Ubuntu 18.04 LTS

### 2.How to:
How to run the script, initially clone this repository to your local directory. If you have not downloaded the Microsoft Azure CLI you will need to run the following command:
```shell
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
or you can look at the following link [Microsoft Azure](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest "https://docs.microsoft.com/en-us/cli/azure") to see the full set of linux commands required to effectively install the Azure CLI, and the _az_ command required to create the various parts of the cloud system
After installing the Azure CLI run the run.sh file, you will initially be prompted to whether you wish to create or delete the system, enter **create**, all in __lower case__. You will then be taken to a microsoft login page where you will login with the microsoft account that you wish to tie to your Azure portal. After logging in, close that window and return to the terminal, your cloud network complete with two basic virtual machines.

### 3.note
All the required files for the automation process can be found in the scripts folder, each labelled with the area that they create
* resourceGrp.sh **-** this will create the resource group that will be tied to the rest of the network.
* network.sh **-** this will create the virtual network using the IP address 10.0.0.0/16, along with the subnet 10.0.0.0/24 .
* nsg.sh **-** this will create the Network Security Group along with the network's associated rules, the following ports will be opened: 22 and 8080. These particular ports will be used to ssh into the VM using the following command:
```shell
ssh admin123@[IP address of the VM]
```
* and to allow access to [Jenkins](https://github.com/AChar95/JenkinsScript "automated Jenkins script") and [Wildfly](https://github.com/AChar95/WildflyScript "automated Jenkins script") which are intend to be run on their own relative VMs.
* NICs.sh **-** this will create the Network Interface Cards which will allow the VMs to vconnect to the network
* publicIP.sh **-** this will create the public IP address along with the DNS name
* VM.sh **-** this will create both VMs for hosting the Jenkins and Wildfly|
* deleteWildflyVM.sh **-** this will delete the WildflyVm
* deleteJenkinsVM.sh **-** this will delete the JenkinsVm
* deleteAll.sh **-** this will delete all of the different elements of the network on Azure
