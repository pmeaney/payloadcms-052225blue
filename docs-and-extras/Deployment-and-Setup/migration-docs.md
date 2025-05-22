# Remote migrations dir

Note to self:
The directory `/home/ghaCICDDevOpsUser` hosts the project's bind mounts on the remote server at `/home/ghaCICDDevOpsUser/payloadcms-cms__migrations` .

That directory is owned by my devops bot user which the Github Actions CICD runner uses-- created via terraform.
However, when I ssh in, I ssh in via my human devops user, so my human devops user's home dir is: `/home/patDevOpsUser`.  Both home directories & users exist on the remote server, since it's used by a CICD bot and a human.

So, just be aware of where the migrations directory's bind mount lives (`/home/ghaCICDDevOpsUser/payloadcms-cms__migrations`-- which hosts the migration files.  The bind mounted "payloadcms-cms__migrations" directory is in the home directory of the cicd user, who deploys it to the remote server, and corresponds to the /payloadcms-cms/src/migrations directory in the code base.

>**Why does this matter?** Because if you're **having trouble with migrations**, you may need to ensure a fresh migration or reset of the migration files.  In that case, you need to be aware that you'll need to manually clear out these files on the server's filesystem.

Here's what I mean:

Say I'm in the `ghaCICDDevOpsUser` dir just cleaning up old project files.  
This next slice of directory info is just showing the difference between the two users' home directories.
The "ghaCICDDevOpsUser" has the app bind-mound directories (shared between host (remote server) and containers).  
The "patDevOpsUser" who I signed in as... has the "npm020325" directory in its home directory.  Which makes sense-- those are the Nginx Proxy Manager repo files I cloned from github to deploy on the remote server, to setup the nginx server to direct http traffic to project frontend apps.

Anyway, just keep in mind... the migration files on the remote server are living at:
`/home/ghaCICDDevOpsUser/payloadcms-cms__migrations`

```bash
patDevOpsUser@server020525-debianNpm:/home/ghaCICDDevOpsUser$ cd ~
patDevOpsUser@server020525-debianNpm:~$ pwd
/home/patDevOpsUser
patDevOpsUser@server020525-debianNpm:~$ cd /home/ghaCICDDevOpsUser
patDevOpsUser@server020525-debianNpm:/home/ghaCICDDevOpsUser$ ls
payloadcms-cms__migrations  payloadcms-postgres-db
patDevOpsUser@server020525-debianNpm:/home/ghaCICDDevOpsUser$ ls payloadcms-cms__migrations/
20250402_002156.json  20250402_002156.ts  index.ts
patDevOpsUser@server020525-debianNpm:/home/ghaCICDDevOpsUser$ cd ~
patDevOpsUser@server020525-debianNpm:~$ ls
basic-payload-env.env  npm020325
```
