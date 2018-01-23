import Foundation

// thanks! From Aaroun Chou
// https://medium.com/@_achou/making-a-playground-using-rxswift-81d8377bd239

public func delay(_ delay: TimeInterval, closure: @escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
}

#if NOT_IN_PLAYGROUND
    
    public func playgroundTimeLimit(seconds: TimeInterval) {
    }
    
#else
    
    import PlaygroundSupport
    public func playgroundTimeLimit(seconds: TimeInterval) {
        PlaygroundPage.current.needsIndefiniteExecution = true
        delay(seconds) {
            PlaygroundPage.current.finishExecution()
        }
    }
    
#endif
