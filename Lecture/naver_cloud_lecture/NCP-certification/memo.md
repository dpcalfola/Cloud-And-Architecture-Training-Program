# 
201 compute, container, Storage

202 Network, CDN, Media







###  리눅스 파티션 hex code 몇개 암기


```shell
Linux Filesystem: 83 (Hex) - This code represents a Linux native filesystem, such as ext2, ext3, or ext4.

Linux Swap: 82 (Hex) - This code is used for Linux swap partitions, which are used as virtual memory extensions.

Linux LVM: 8E (Hex) - This code is used for Linux Logical Volume Manager (LVM) partitions, which allow for advanced partition management and dynamic volume resizing.

BIOS Boot Partition: EF (Hex) - This code indicates a BIOS boot partition, used in systems with the GPT partitioning scheme and BIOS-based booting.

EFI System Partition: EF00 (Hex) - This code is used for the EFI System Partition (ESP) in systems with the GPT partitioning scheme and UEFI booting.

RAID Partition: FD (Hex) - This code is used to mark partitions that are part of a Linux software RAID (Redundant Array of Independent Disks) configuration.
```



###  로그 파일 보기
```shell
(cd /var/log/httpd) 로그파일 경로
tail -10 access_log
```



### 로그 위치
```shell
/var/log/messages: General system messages.
/var/log/secure: Authentication-related messages.
/var/log/cron: Cron job activity.
/var/log/boot.log: Boot messages.
/var/log/dmesg: Kernel boot messages.
/var/log/httpd/: Apache web server logs.
/var/log/mysql/: MySQL database server logs.
/var/log/maillog: Mail server logs.
```