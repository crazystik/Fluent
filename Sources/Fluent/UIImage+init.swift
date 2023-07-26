import UIKit

extension UIColor {
    
    /// `hex` String can be without opacity A0B1C3, #A0B1C3 and can be set to `opacity`
    /// or with opacity A0B1C3FF, #A0B1C3FF but in this case `opacity` value will not be taken
    public convenience init(hex: String, opacity: CGFloat = 1) {
        var hex = hex
        var opacity = opacity
        let red, green, blue: CGFloat

        if hex.hasPrefix("#") { hex.removeFirst() }

        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0

        guard scanner.scanHexInt64(&hexNumber) else {
            assertionFailure("string \(hex) not converted to color")
            self.init()
            return
        }
        
        if hex.count == 8 {
            red = CGFloat((hexNumber & 0xff000000) >> 24) / 255
            green = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            blue = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            opacity = CGFloat(hexNumber & 0x000000ff) / 255
        } else {
            red = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            green = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            blue = CGFloat(hexNumber & 0x0000ff) / 255
        }
        
        self.init(red: red, green: green, blue: blue, alpha: opacity)
    }
    
    /// `hex` UInt can be without opacity A0B1C3 and can be set to `opacity`
    /// or with opacity A0B1C3FF but in this case `opacity` value will not be taken
    public convenience init(hex: UInt, opacity: Double = 1) {
        if String(hex).count == 8 {
            self.init(
                red: Double((hex >> 24) & 0xFF) / 255,
                green: Double((hex >> 16) & 0xFF) / 255,
                blue: Double((hex >> 8) & 0xFF) / 255,
                alpha: Double(hex & 0xFF) / 255
            )
        } else {
            self.init(
                red: Double((hex >> 16) & 0xFF) / 255,
                green: Double((hex >> 8) & 0xFF) / 255,
                blue: Double(hex & 0xFF) / 255,
                alpha: opacity
            )
        }
    }
}
