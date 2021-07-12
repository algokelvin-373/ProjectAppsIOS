
import SystemConfiguration
 
// Set URL Website dicoding.com
let reachability = SCNetworkReachabilityCreateWithName(nil, "www.dicoding.com")
 
var flags = SCNetworkReachabilityFlags()
SCNetworkReachabilityGetFlags(reachability!, &flags)
 
let isReachable = flags.contains(.reachable)
print("IS REACHABLE: \(isReachable)")
