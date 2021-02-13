# Virtual machine created by Vagrant
VM Ubuntu 18.04 with a complete GUI

## How to configure VM
How to use Vagrant you can find [here](https://www.vagrantup.com/intro).
To start VM:
```bash
vagrant up
vagrant reload
```
When the VM is configured, the VM screen should show the LightDM login screen. Log in as user "**vagrant**", password "**vagrant**".
Open terminal and type:
```bash
# Virtual box configuration
sudo VBoxClient --clipboard
sudo VBoxClient --draganddrop
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless

reboot
```
After reboot, VM is ready to use.