import Foundation

public class BlinkooBaseModel{
    public func toMap() -> [String: Any?] {
        var map: [String: Any?] = [:]
        
        var currentMirror: Mirror? = Mirror(reflecting: self)
        while let mirror = currentMirror {
            for child in mirror.children {
                if let propertyName = child.label {
                    map[propertyName] = child.value
                }
            }
            currentMirror = mirror.superclassMirror
        }
        return map
    }
}
