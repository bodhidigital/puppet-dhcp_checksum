# manifests/init.pp

class dhcp_checksum (
  Boolean $all_hosts  = false,
) {
  # Only apply rule to hosts using DHCP unless $all_hosts is true.
  if (undef != $networking['dhcp']) or ($all_hosts) {
    firewall { '000:mangle:POSTROUTING:CHECKSUM outgoing DHCP (marked)':
      table         => 'mangle',
      chain         => 'POSTROUTING',
      proto         => 'udp',
      sport         => 68,
      dport         => 67,
      jump          => 'CHECKSUM',
      checksum_fill => true,
    }
  }
}

# vim: set ts=2 sw=2 et syn=puppet:
