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
```bash
-d Directory to share to the host(s).
-h Display this usage message.
-n HOST,[HOST1,HOST2,HOSTn] Specify the host names, or IP's at which to share to.
-t Perform a connection test for each host, skipping hosts we can't talk to.
-p The permissions to give to the host(s).
```

<b>EXAMPLE USAGE</b>: `nfs-util /mnt/nfs_share -t -n my_server_1 -p 'no_root_squash,rw,sync,no_subtree_check'`

<b>NOTE</b>: permissions default to `(rw,sync,no_subtree_check)`
