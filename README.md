#Example Job 
1. Cloning a Private Repo with SSHkey.
2. Run Ansible Playbook
3. Config Network and Ping

Job File 'test.job'

job "docs" {

  datacenters = ["dc1"]

  type = "batch"

  group "config" {
    task "ansible" {
      artifact {
        source="git::https://github.com/srivignessh/Test"
        destination="/local/config/"
        options {
            sshkey="LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlKS0FJQkFBS0NBZ0VBc1dhRzNUSHEyWVZGTkFlZ0dtSXgrNGdqMUs2Skdsdk9UMEp2dmk3cG5VaGZUd1FPCmRnTHExa0Q4MGFFK0R4TkYzS2hEci9jcDFLSFc3dlQyRkNFMXZBV2tEKzBtMzZPam5KblZCeHVlL3JSTTlhLzAKcXk4WFU2eWVwV2ZHOGxrc09qcGNmSENpeWFFOHl0WjVuTjlCRVo5cjd5czVSMUlHQU9xeTJpV0I0eXFpanIzVwpNcTFkR2tyQ3FmbG9PN1pkMFV6OW9uREIrVU5jdjhtTmg1bWVXOHpKTWlkdVRKRXJyRWwzNkRoa1pRTjl5UENuCnJUMlk1SnNyR0VzVE5mb0dQakVrS2piSkxlSEVocXp6U2RJYThvQnhlK2JYSE1URUpscG16SnBlZzczckFSOG8KKzdMeHppK0p5MUlaYmVYZk1UWForSGQxK2lIODRpVHNVNnZLOEdsZzV0cWNHdU16dHpZUlJua0hWTkc5RllsTgpnVm1oSU9VcFdySlI3cG1tVWI3bDFZVDZjS0J6bEl5elBsNFAzQWtPdlRnT01GTDExVVF0dUsxWkE4citlSzhPCm1wMnpPaXBycnNUd0hmVWtUMjhVRUZkS3VQc3o4alhwZ3RhdlBWZ3RLSTZ1ZlNVQmlTZXlZcStFLzFqaVVKY2wKOXE1SlNCd3hlcy9hR1dqTVFGUGV2M0h1cEFKdml5WlNodVo3YnhJcVVidE0venpISG5VUk1RVlFKdng2REZabgo5RDRSRjVHUDB0QVFDY21pZFFUKzZWMWFNaXBKbFpmeE90bXAwUTd1eFJ2MlBHamVYVnUwZjFoNDFsa25lblBZCmhUTGtTVzJoRXZVNGlXQkhLdlZsS04vN1F4OUJPQlB0MTQxVEx1RGlHdE13LzFHcmp5Y1dUWTZvamhrQ0F3RUEKQVFLQ0FnQTkxVW11c2FaMUdRR3RCL2RqR3RUbkltV3l6UDhXdytjZU16NzFvQzVuVndGNWJpV0lOcTRaN2Q3eApSbTEySGJhZEdiMDJDVVY0U3N5Nno0RXlOUDBnd3lxVExvcjlLbkZ0dFNUT2JHODN3aXFNL0Q2Z3FESk9SUDJyCkU0Z0JrdGxhbGxzRU9OSlV5ekdBVmM5ZndXVlJ1aXFKMjV3RVl1K2F4RE9BMjgveEdUdzkycWRkVkpYK0F3N2sKNWZ6UnkxZmFDeWJneHNLbG1qZ3ExUnJTcDlYTms0eVJRYk10VnZCTkJmS1lhNGQ2dWdQTzFTcnN0R3FsUy94eQpaRUNXOE1YYVNaQ2NjaW9mSnZFMEsvWkV4Y29FdW9aVHRIdElHTUZ4eU5MS0FBaHZqUFBybVN2VXgyT0hCWVRXCjdJL1dnV2dSSS84TW5yN3RaNGxZWFp4TjhiUXpFT1hBbGNlRzl3QWlCaE4rakFZWDVGelJISXo5TWtkT2pZYWoKUzRFZi9jYXZMN0pScCsxRzZNSWVUM1JuZ2F5R0hqU05sUVpDaHBnMGxoYmM3S1U3OGZsRDc5U0ExR1R0WWFsWgphZDhTVkg0MWZuanN6RUYrczZDRFZOZlAyM0FicjRCNVdVbHJxVzVvaGM0SGtKOHp3WVU0STE5L2FRZ3dET0NqCmRSdlN2aXl1VG1pSnZNbytnZ25tamJScVVhTXZvU3ZBZS9Na0pYTHRSaEM0UkJRNXRrQlBrRUIrNjF3NlFaRWUKME0xc1RzT3lhMi8xTHNsT1VmSGFvQldtZzdRSDZRQnhrbE9yLzYzam84VVhUVWpoN0duM014VEY1Q3AxSVRlcApST1dPTnRZTmtHbHRmZy91OWd0MDlqSWcwYXFHZ29wTUFQWFQ5RDZ4cUV2SUlzZkZmUUtDQVFFQTVRcG1VYnBTClhLWVpsV0s3UGpWZnVEQ21VdEhZQ2FXWnJYemR6VGl0eFU2VnN3TWlDRGNpSGw3b1pqZDV4UnVmSXpoMlNIVVkKMk83K3BsMkRacW5oc0grTmZRMHpnaUZrTVhwRm5pVXdOdFVtcGpMaDZhcnlTYnUvbUgvZ0N1c2FLRWs4MDIzcApzSzRhSDZWdTlrakhTa3c4YlJDdEFzbUh6QVRmZTNwaXRXblRRNEVRNHZHR2o5M1puUzMvc1RkbGYvSjNxWVg0CjAxbndIZ2E1TVlvdnZia0lxcjJIcUxVelNXL2crNmlGUEl2TTVnUjI1Wk5RejZjWHJSTnFrN1pQanBKZ2xGL3QKM2g3QzJyaC9JenBKbTZPZUR2aHdGTkttM1Vkbmh5WDlEL21PTHp2Z09jTWVWUkszQk5lZVpENENSQUoraHNycApBT2ZaMFhRSkljZ3psd0tDQVFFQXhrZ1N4M3VPZDc5clNLVkI3anhwdklqR2tSY0pnbjlzcTQwazRxRGZ2ckhPCkc1U3ZpaTJwallpdmxaMVlLSWFYY1JCLzN6UTcvWkRGY2JLaUF1US9XZXkyelVYS2tnUzdXWEFQT1lDNXJreTMKWXFKUmtqWWoydWtOVUhFYVpNQ2QrWUJUazl6S1B5dXU2SmtGKzh1N0ViTzVsVk9PVVZKQzZDZXNCUURUZzRhdgpzQ3JZZUFQRXc0NmEzbGFSSFVuWnpaOHg0UTNMdHVrUXlaTnB3T3J3bUJXTTRjaUpCenNnZjdmWnNOcHhrMkFqCmRvaXEybE0rOW5jWG5Dc1VJM004VWhWaER0MEIrT2NVL1AzN3o0Y3p0WWFaaUc5clk1MStocWliR0YvL2U2TXMKUUZFaS8rMFJkVU1VZXBVczNtZzBXRWNxNy9vaHVTd1hQK1lRZkc3Qnp3S0NBUUVBbktSSkovbnFuQ3lJOEs3TwphaFFzdTVhaUdhQWtSU3k1ZG5vZ1kxc3hGUERTMXRQOHNXdXJiT1B4d3Y2THpDOUEzZUNlbkoxZytmUXh1bXZZCkV4MTZHYkNTZm9USnhtUzUxbERPVGdNVy8xazFqcExjQ0dmK1Bra21GdERWMUFISUtPYzFyMC9MZENjTi9MaXkKczhOQWNPTEVyTDZyNUcwWjc0RWhxcHdmNS94UkhTaW0rTjYvN2FLSFVzVUR5eHFjMHkxcmcwZjV6ZW9EbXpWego4SnFXWGdXdkZMNThpZmdxOUQyTXUvQWI5eldSVTNxWUtoaGZPelVHcnpySk4rNkdhSFpaa1FBdWVTdkdqYm1DClVnQnFHUVNFYzY2YlVOSmtobzl3RVhEOHFyRTgrYmJVZWd5a3NRQVVwVDRsdUY3a1E4a0U2WURhYStFbENlZDIKMjJERlR3S0NBUUFlOHA3anZkZzF2bzNMTCtnRGZEQnd1ZFJzVHZFd0NoMTNCVGV0bTdod2RpWWFUZkc4R25adApYZGt4Ky9ZSGxVSkw1bXhlOVRNcjE0M0p1anpwUUtEV3MwaXc3MlMzdDc5YUxWQmpCRUYzQUFoYmY4UkZrdWV6CndrNU9zT2lTc3pHMUFKK0s0NW81aytMZjhRcHJDNWh1SWVRa2QzOHVHQzNUT0dYei9mWUZnRjhwbXZaZ2ZRNFkKQzhrR1RQS25aS0IzSkpMUGNxektKc1IxQWVvdXJ6elFNQVRtTkx1V2dsY0hPRFhsRWFOS2dtWG1tVnc1YVdiWgpaeXNyTjlvVDBtZW0xQ2xxL1huU1ZKY0ZDY3RrejlCMVU4WGc4cXNMU0VpNFVkYXJUa2g5RHJIWWRCR0hhb1FnCkRsRkM5TWVsQ3hTb2Rxc3YrNVdKNW1UV2wxMFpYdHduQW9JQkFCQkN5THJRR0lNbFlpN0NGOWRydkZPa0V6ZGYKZzZzR0l5aURKdzFrRHp2b1dFMm9hK3hKcG9IQUlacmNtVmxpd2orV3lIdEJjVW5Ubm9VcHRkcUNlOEJ1MmVKcQp0U0I0dnAvdlFDU3ZuMmYyZlVhQXluYSt5TE5sbTluTVZ1eVR6T1dSR1Jadlk2RnlEK2hyM1ZCNnYrZS9RTUVECkN0MlNlMkN3NE0yaXo3anJsbFhoMFJ3QW5oY0lwY3hLN1FDUTJyVGdndlZXeGMzWTRWUDVXR2grOUdxczRxRkIKNW82OWg2WlFKTWc3eHBnMlhQQlE1Rnl5ckJCbU53M2dnYnFnR0FHc3NIOGcrWm9JT2E0Rmoxa1dBSVppMHZ2dwpuMlprT2dOdnl2YVBUclZiaHJFNHdSd2JLTXpsaVpCK2ZXZzdVM2tDT2hLWFVvLzdFcDNRWXRJWTM3dz0KLS0tLS1FTkQgUlNBIFBSSVZBVEUgS0VZLS0tLS0K"
        }
      }
      driver = "docker"
      config {
        network_mode="bridge"
        image = "williamyeh/ansible:ubuntu14.04"
        command = "ansible-playbook"
        args=["-i","'localhost,'","-c","local","/local/config/first.yml"]
      }
      resources{
      cpu= 800  
      memory = 400
      }

    }
  }
}

Run 'test.job'

Termial Screen 1:
vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad agent -dev
    No configuration files loaded
==> Starting Nomad agent...

Terminal Screen 2:
vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad run test.job 
==> Monitoring evaluation "74e70857"
    Evaluation triggered by job "docs"
    Allocation "b031cc9b" created: node "5138e142", group "config"
    Evaluation status changed: "pending" -> "complete"
==> Evaluation "74e70857" finished with status "complete"

Status 'test.job'

vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad status docs
ID            = docs
Name          = docs
Type          = batch
Priority      = 50
Datacenters   = dc1
Status        = running
Periodic      = false
Parameterized = false

Summary
Task Group  Queued  Starting  Running  Failed  Complete  Lost
config      0       0         1        0       0         0

Allocations
ID        Eval ID   Node ID   Task Group  Desired  Status   Created At
b031cc9b  74e70857  5138e142  config      run      running  06/18/17 19:53:37 UTC

Completed 'test.job'

vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad status docs
ID            = docs
Name          = docs
Type          = batch
Priority      = 50
Datacenters   = dc1
Status        = dead
Periodic      = false
Parameterized = false

Summary
Task Group  Queued  Starting  Running  Failed  Complete  Lost
config      0       0         0        0       1         0

Allocations
ID        Eval ID   Node ID   Task Group  Desired  Status    Created At
b031cc9b  74e70857  5138e142  config      run      complete  06/18/17 19:53:37 UTC

Output 'test.job'
vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad logs b031cc9b

PLAY [all] *********************************************************************

TASK [Gathering Facts] *********************************************************
ok: [']
ok: ['localhost]

TASK [ping] ********************************************************************
ok: [']
ok: ['localhost]

PLAY RECAP *********************************************************************
'                          : ok=2    changed=0    unreachable=0    failed=0   
'localhost                 : ok=2    changed=0    unreachable=0    failed=0   

Alloc-status 'test.job'

vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad alloc-status b031cc9b
ID                  = b031cc9b
Eval ID             = 74e70857
Name                = docs.config[0]
Node ID             = 5138e142
Job ID              = docs
Client Status       = complete
Client Description  = <none>
Desired Status      = run
Desired Description = <none>
Created At          = 06/18/17 19:53:37 UTC

Task "ansible" is "dead"
Task Resources
CPU      Memory   Disk     IOPS  Addresses
800 MHz  400 MiB  300 MiB  0     

Recent Events:
Time                   Type                   Description
06/18/17 19:53:40 UTC  Terminated             Exit Code: 0
06/18/17 19:53:38 UTC  Started                Task started by client
06/18/17 19:53:37 UTC  Downloading Artifacts  Client is downloading artifacts
06/18/17 19:53:37 UTC  Task Setup             Building Task Directory
06/18/17 19:53:37 UTC  Received               Task received by client

File system View ansible/local/config/
vagrant@vagrant-ubuntu-trusty-64:~$ sudo ./nomad fs b031cc9b ansible/local/config
Mode        Size     Modified Time          Name
drwxr-xr-x  4.0 KiB  06/18/17 19:53:37 UTC  .git/
-rw-r--r--  12 B     06/18/17 19:53:37 UTC  README.md
-rw-r--r--  39 B     06/18/17 19:53:37 UTC  first.yml
test
