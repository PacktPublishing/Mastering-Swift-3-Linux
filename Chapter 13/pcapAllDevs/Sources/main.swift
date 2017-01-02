import Cpcap
import Glibc 

var errbuf = UnsafeMutablePointer<Int8>.allocate(capacity:Int(PCAP_ERRBUF_SIZE))
var devs = UnsafeMutablePointer<UnsafeMutablePointer<pcap_if_t>?>.allocate(capacity:1)

if (pcap_findalldevs(devs,errbuf) >= 0 ) {
    if var nDev = devs.pointee {
	var cont = true 

	while (cont) {
	    var devName = String(cString: nDev.pointee.name)
	    print("Dev Name: \(devName)")
	    if (nDev.pointee.next != nil) {
		nDev = nDev.pointee.next
	    } else {
		cont = false
	    }
	} 
    }

    pcap_freealldevs(devs.pointee)
} else {
    print("Could not get devs")
}

