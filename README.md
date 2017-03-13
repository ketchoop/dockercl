# dockercl
Funny wrapper to run command without **docker** command prefix.

# What is it

It's a little script to allow you run commands in pseudo docker cli. Also,
it has permissions control(through the config file) to configure commands
that are permited for user.

It looks like this:

```
dockercl > rm -f my_the_coolest_container
```

# How to use

Just run it in your terminal.

```sh
dockercl # just run dockercl

dockercl ~/.my_dockercl_permissions #you can pass argument with permissions

```

# Permissions configuration

## Common point

You can configure two lists: white-list(what commands are allowed) 
and black-list(commands that aren't allowed). White-lists and black-lists are 
unnecessary and you can specify only one list(white or black). By default their
values are:

    * black-list: # just nothing
    * white-list: \/

Pay attention: black-list has more priority than white-list. It means black-list
rules can rewrite whit-list rules. For example: you can allow all commands, but
permit forbid several commands.

## Permission rules

```
white-list: run, network, ps # allow only 'network' and 'run' command
# if black-list doesn't specify it doesn't affect to permissions
#----------------------------------------------------------------

white-list: \/ # allow all commands. It looks like universal quantifier.
black-list: run, network # But forbid run and network commands.
#-----------------------------------------------------------------------
```

# Practical usage

For fun, for your convenience or to limit access, for example, through ssh to allow only docker commands by replacement user shell to dockercl(sometimes it is bad idea to replace standard user shell from security point. Use it carefully)

# Special thanks

Thanks *boot2docker* for the pretty docker whale.
