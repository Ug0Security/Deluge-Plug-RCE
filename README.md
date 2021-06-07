deluge plugin based on https://github.com/omaralvarez/deluge-autoremoveplus to get RCE

Just go to autoremoveplus/core.py , edit payload and create python egg (python setup.py bdist_egg)

Dont forget to restart deluged service after you're done as it seems to crash

