# workstation

My workstation initialization scripts, based on ansible playbook
and targeted at Ubuntu 20.04 LTS. 

## run

```shell
$ sudo apt-get install -y ansible git
$ mkdir -p ~/Projects
$ git -C ~/Projects/workspace pull ||  git clone https://github.com/radoslawgrochowski/workspace
````

## testing

### using docker
```sh
$ docker build . -t workspace && docker run --rm -it workspace bash
```

## inspiration 
* https://github.com/ThePrimeagen/ansible