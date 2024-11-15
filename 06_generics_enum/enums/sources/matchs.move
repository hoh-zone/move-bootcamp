module enums::matchs;

public enum IPVersion {
        IpV4,
        IpV6,
}

public fun which_ip_version(ip: &mut IPVersion) {
    match (ip) {
            IPVersion::IpV4=>{},
            IPVersion::IpV6 => {},
    }
}


