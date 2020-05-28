# jboss-formula

JBoss test environment, currently supports the following versions:

  - JBoss 6.1 w/ Java JDK 6u45

As it stands this sandbox allows the validation of the exploits found here:
  
  - https://github.com/joaomatosf/jexboss



Setup environment
-----------------


Install RVM to manage ruby installs 
```
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/bin/rvm
```

OSX only
--------

Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


```
brew install cask
brew cask install vagrant
```

End OSX Only
------------


Ruby Setup
----------

```
cd <formula dir>
bundle install
```
or
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```

Testing using [testinfra](https://testinfra.readthedocs.io/en/latest/). and run locally using an SSH connection to the VM, you'll need testinfra installed locally for `kitchen test` and `kitchen verify` to work.

Python Setup
------------

```
virtualenv -p python3 venv
source venv/bin/activate

pip install -r requirements.txt
```


Run a converge on the default configuration:
```sh
# if already converged
kitchen verify default

# to run a full teardown, build, test, teardown
kitchen test default
```


Troubleshooting
---------------

In-depth highstate behavior can be identified with the following:

```sh
sudo -E /tmp/kitchen/dependencies.sh;sudo -E salt-call --state-output=changes --config-dir=/tmp/kitchen/etc/salt state.highstate --log-level=debug # debug
```

