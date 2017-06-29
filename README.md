Infrastructure as code. Make ywkj all application projects deploy ops as code. 
-------------------------------------------

We use ansible roles framework to orchestrate deployment tasks. 

Now, we have 3 environments:
1.production
2.stage
3.cn(offline dev)
You can find cn, staging and production folder and root directory.
Let's explain, use stage as example, the directory contents are:

        hosts    #all stage machines information,include single host and group.
        [group_vars]
            all #variable used for all groups defined in hosts. 
            group1 #variable used for group1 defined in hosts only. 
        [host_vars]
            all #variable used for all hosts defined in hosts.
            host1 #variable used for host1 defined in hosts only.
        

Here explain files, tasks and vars folder:

        [files] #define all global script files.
        [tasks] #define all global used tasks.
        [vars] #define all global used variabls.

roles folder you can see:
http://docs.ansible.com/ansible/playbooks_best_practices.html

How to run:
$ansible-playbook -i staging stage_deployment.yml --tags stage_kxb --skip-tags no_run
