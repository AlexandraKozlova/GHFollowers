//
//  UITableView + Ext.swift
//  GHFollowers
//
//  Created by Aleksandra on 26.02.2022.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
