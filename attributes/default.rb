# Install properties
default['lynis']['install']['uri'] = 'https://packages.cisofy.com/community/lynis/deb/'
default['lynis']['install']['key'] = 'C80E383C3DE9F082E01391A0366C67DE91CA5D5F'
default['lynis']['install']['keyserver'] = 'keyserver.ubuntu.com'
default['lynis']['install']['package_name'] = 'lynis'

# Audit command
default['lynis']['audit']['command'] = 'lynis -Q audit system'
