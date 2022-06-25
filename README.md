# nfs-util
Script that greatly simplifies creating nfs shares, by creating a string which you can ship directly to your exports file. This script has the capabilities to allow infinite hosts specified so you can simply specify the parameters of your nfs share once and fire away.

## Install
```bash
git clone https://github.com/rawleyfowler/nfs-util.git
cd nfs-util
sudo make install
```

## Uninstall
```bash
sudo make uninstall
```

## Usage
```
-d Directory to share to the host(s).
-h Display this usage message.
-n HOST,[HOST1,HOST2,HOSTn] Specify the host names, or IP's at which to share to.
-t Perform a connection test for each host, skipping hosts we can't talk to.
-p The permissions to give to the host(s).
```

<b>EXAMPLE USAGE</b>: 
```
nfs-util -d /mnt/nfs_share -t -n my_server_1,192.168.1.20,192.168.1.3 -p 'no_root_squash,rw,sync,no_subtree_check'
```
<b>RESULT</b>:
```nfs
/mnt/nfs_share  my_server_1(no_root_squash,rw,sync,no_subtree_check)
/mnt/nfs_share  192.168.1.20(no_root_squash,rw,sync,no_subtree_check)
/mnt/nfs_share  192.168.1.3(no_root_squash,rw,sync,no_subtree_check)
```

<b>NOTE</b>: permissions default to `(rw,sync,no_subtree_check)`
