
# Backed up SQL DB

- I mostly just needed the posts DB.
- Its really no biggie-- I can track down the content. But this was easy to do, so might as well.
- I'll destroy the server and re-create it in a more secure way.
- Recently had a botnet try to get access.  It didn't.  But it did exploit a NextJS vulnerability.
- So, as a result, I'll harden my security.
- This project was just a prototype anyway.  And it provided great context to learn new security strategies.

Command ran:
`scp debblue:/home/patDevOpsUser/posts_backup.sql .`

```
~/localhost/projects/active/apps/payloadcms-052225blue/backups-jan-2025 main !1                                   11:46:57 AM
❯ scp debblue:/home/patDevOpsUser/payloadcms_full_backup.sql .
scp debblue:/home/patDevOpsUser/posts_backup.sql .
payloadcms_full_backup.sql                                                                  100%  890KB   1.4MB/s   00:00    
posts_backup.sql    
```