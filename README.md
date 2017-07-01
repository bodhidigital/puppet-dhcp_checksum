<!-- README.md -->
# dhcp\_checksum

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Force checksumming of DHCP client packets.  UDP packets often fail to checksum properly in containers with veth interfaces, this can cause clients to fail to renew DHCP leases.  This module corrects that for DHCP clients.

## Usage

Just declare the dhcp\_checksum class.
```
class { '::dhcp_checksum': }
```

## Reference

### Classes
#### dhcp\_checksum
* all\_hosts - Apply firewall rules to all hosts, regardless if they appear to be using DHCP.  This could be useful if DHCP clients fail to obtain a lease in the first place.  (Boolean, default: false)

## Limitations

Only supports Linux.

## Development

Check it out at [github.com/bodhidigital/puppet-dhcp\_checksum](https://github.com/bodhidigital/puppet-dhcp_checksum).

<!-- vim: set ts=2 sw=2 et syn=markdown: -->
