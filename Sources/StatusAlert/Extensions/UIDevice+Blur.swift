import UIKit

extension UIDevice {
    
    /// If the device is able to display blur:
    ///
    /// - if operation system supports blur;
    /// - if "Reduce transparency" mode is disabled;
    /// - if device supports blur.
    var isBlurAvailable: Bool {
        guard operationSystemSupportsBlur,
            !reduceTransparencyEnabled
            else {
                return false
        }
        
        return true
    }
    
    private var operationSystemSupportsBlur: Bool {
        if #available(iOS 8.0, *) {
            return true
        } else {
            return false
        }
    }
    
    private var reduceTransparencyEnabled: Bool {
        return UIAccessibility.isReduceTransparencyEnabled
    }
}
