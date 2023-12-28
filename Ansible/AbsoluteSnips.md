# Ansible training on Pluralsight

 - What is ansible modules
 - What is Ansible playbooks

 ### Ansible is agentless
  - Windows; Ansible uses WinRM
  - Linux; Ansible uses SSH 


  ## Install on linux
  You need to add the Common repo before you can get the latest stable release

  `sudo apt install software-properties-common`

  Then ansible common public to our ressources list
  `sudo apt-add-repository ppa:ansible/ansible`
   
   Install the lasest version of the common publiv avaible version of Ansible

   `sudo apt install ansible -y`

   Check the install by viewing the version
   `ansible --version`

   Ansible needs to log in to the clients using some credentials - AD preffered

   ## WinRM config

   ### notes
    - Listeners Port: http/https 5986/5986 - brug kun HTTPS så det bliver krypteret med TLS
    - authentication: Basic, Certificate, NTLM, Kerberos CredSSP - brug CredSSP, da det er mest moderne

    ## Win2019 setup (kan gøres med GPO)
    - List current WinRM listeners
    `winrm enumerate winrm/config/Listener`
    - List Authentication methods configured
    `winrm get winrm/config/Service`
    - Add the AD serviceaccount to local admin on the computer
