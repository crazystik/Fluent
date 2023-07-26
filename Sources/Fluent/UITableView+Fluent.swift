import UIKit

extension UITableView {
    @discardableResult
    public func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
        self.dataSource = dataSource
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UITableViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSourceAndDelegate(_ dataSourceAndDelegate: (UITableViewDelegate & UITableViewDataSource)?) -> Self {
        dataSource(dataSourceAndDelegate)
            .delegate(dataSourceAndDelegate)
    }
    
    @discardableResult
    public func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    public func separatorInset(_ separatorInset: UIEdgeInsets) -> Self {
        self.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    public func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
        self.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Self {
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Self {
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    public func tableHeaderView(_ tableHeaderView: UIView?) -> Self {
        self.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    public func tableFooterView(_ tableFooterView: UIView?) -> Self {
        self.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    public func editing(_ editing: Bool) -> Self {
        self.isEditing = editing
        return self
    }
    
    @discardableResult
    public func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> Self {
        self.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @discardableResult
    public func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> Self {
        self.dragDelegate = dragDelegate
        return self
    }
    
    @discardableResult
    public func dropDelegate(_ dragDelegate: UITableViewDropDelegate?) -> Self {
        self.dropDelegate = dropDelegate
        return self
    }
    
    @discardableResult
    public func dragAndDropDelegate(_ dragAndDropDelegate: (UITableViewDragDelegate & UITableViewDropDelegate)?) -> Self {
        dragDelegate(dragAndDropDelegate)
            .dropDelegate(dragAndDropDelegate)
    }
}
