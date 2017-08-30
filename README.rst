==============
tempest-docker
==============

Quick Start
-----------

#. Modify tempest_env/tempest.conf file to run tempest tests.

#. Run docker without CMD::

    $ docker run -v $FULL_PATH_TO_THE_HOST_tempest_env_DIR:/tempest_env -it --rm masayukig/tempest

   This shows a list of tempest tests.

#. Run docker with CMD::

    $ docker run -v $FULL_PATH_TO_THE_HOST_tempest_env_DIR:/tempest_env -it --rm masayukig/tempest tempest run

   You can use tempest subcommands as you like. And you can also
   specify command options as you like.
