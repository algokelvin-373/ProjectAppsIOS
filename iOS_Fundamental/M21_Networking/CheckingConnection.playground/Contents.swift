import Cocoa
import SystemConfiguration

func isNetworkReachable(with flags: SCNetworkReachabilityFlags) -> Bool {
    let isReachable = flags.contains(.reachable)
    let needsConnection = flags.contains(.connectionRequired)
    let canConnectAutomatically = flags.contains(.connectionOnDemand) || flags.contains(.connectionOnTraffic)
    let canConnectWithoutUserInteraction = canConnectAutomatically && !flags.contains(.interventionRequired)
    return isReachable && (!needsConnection || canConnectWithoutUserInteraction)
}

var urlWeb = "www.google.com"
let reachability = SCNetworkReachabilityCreateWithName(nil, urlWeb)
var flags = SCNetworkReachabilityFlags()
SCNetworkReachabilityGetFlags(reachability!, &flags)

if !isNetworkReachable(with: flags) {
    print("You don't have internet connection")
} else {
    print("Host \(urlWeb) is reachable")
}


