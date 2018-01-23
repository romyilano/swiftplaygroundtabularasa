import Foundation
import Alamofire
import PlaygroundSupport

public func delay(_ delay: TimeInterval, closure: @escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
}

#if NOT_IN_PLAYGROUND
    public func playgroundTimeLimit(seconds: TimeInterval) {
    }
    
#else
    public func playgroundTimeLimit(seconds: TimeInterval) {
        PlaygroundPage.current.needsIndefiniteExecution = true
        delay(seconds) {
            PlaygroundPage.current.finishExecution()
        }
    }
#endif
