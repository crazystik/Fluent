import UIKit

extension UIView {
    @discardableResult
    public func pin(to layoutGuide: UILayoutGuide, insets: UIEdgeInsets = .zero) -> Self {
        UIView.activate(constraints: [
            topAnchor.constraint(equalTo: layoutGuide.topAnchor, constant: insets.top),
            leftAnchor.constraint(equalTo: layoutGuide.leftAnchor, constant: insets.left),
            rightAnchor.constraint(equalTo: layoutGuide.rightAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor, constant: -insets.bottom)
        ])
        return self
    }
    
    @discardableResult
    public func pin(to view: UIView, insets: UIEdgeInsets = .zero) -> Self {
        UIView.activate(constraints: [
            topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: insets.left),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom)
        ])
        return self
    }
    
    @discardableResult
    public func pinToSuperview(insets: UIEdgeInsets = .zero) -> Self {
        guard let view = superview else { return self }
        UIView.activate(constraints: [
            topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: insets.left),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom)
        ])
        return self
    }

    @discardableResult
    public func pinToSafeArea(of view: UIView, insets: UIEdgeInsets = .zero) -> Self {
        UIView.activate(constraints: [
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: insets.top),
            leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: insets.left),
            rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -insets.bottom)
        ])
        return self
    }

    @discardableResult
    public func pin(to view: UIView, insets: UIEdgeInsets = .zero, height: CGFloat) -> Self {
        UIView.activate(constraints:  [
            topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: insets.left),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: -insets.right),
            heightAnchor.constraint(equalToConstant: height)
        ])
        return self
    }

    @discardableResult
    public func center(in view: UIView) -> Self {
        UIView.activate(constraints: [
            centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        return self
    }

    @discardableResult
    public func pin(width: CGFloat) -> Self {
        UIView.activate(constraints: [
            widthAnchor.constraint(equalToConstant: width)
        ])
        return self
    }
    
    @discardableResult
    public func pin(height: CGFloat) -> Self {
        UIView.activate(constraints: [
            heightAnchor.constraint(equalToConstant: height)
        ])
        return self
    }
    
    @discardableResult
    public func pin(size: CGSize) -> Self {
        UIView.activate(constraints: [
            heightAnchor.constraint(equalToConstant: size.height),
            widthAnchor.constraint(equalToConstant: size.width)
        ])
        return self
    }
    
    @discardableResult
    public func pin(to view: UIView, top: CGFloat) -> Self {
        UIView.activate(constraints: [
            topAnchor.constraint(equalTo: view.topAnchor, constant: top)
        ])
        return self
    }
    
    @discardableResult
    public func pin(to view: UIView, bottom: CGFloat) -> Self {
        UIView.activate(constraints: [
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom)
        ])
        return self
    }
    
    @discardableResult
    public func pin(to view: UIView, right: CGFloat) -> Self {
        UIView.activate(constraints: [
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: right)
        ])
        return self
    }
    
    @discardableResult
    public func pin(to view: UIView, left: CGFloat) -> Self {
        UIView.activate(constraints: [
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: left)
        ])
        return self
    }
}

extension UIView {
    public static func deactivate(constraints: [NSLayoutConstraint]) {
        NSLayoutConstraint.deactivate(constraints)
    }

    public static func activate(constraints: [NSLayoutConstraint]) {
        constraints.forEach { ($0.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false }
        NSLayoutConstraint.activate(constraints)
    }
    
    public func setContentHuggingPriority(_ priority: UILayoutPriority) {
        setContentHuggingPriority(priority, for: .vertical)
        setContentHuggingPriority(priority, for: .horizontal)
    }
    
    public func setContentCompressionResistancePriority(_ priority: UILayoutPriority) {
        setContentCompressionResistancePriority(priority, for: .vertical)
        setContentCompressionResistancePriority(priority, for: .horizontal)
    }
}
