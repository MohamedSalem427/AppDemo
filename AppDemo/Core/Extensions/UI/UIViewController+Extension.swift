//
//  UIViewController+Extension.swift
//  Shift
//
//  Created by ziad on 6/29/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import UIKit

extension UIViewController {

    public func presentOverTopController(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        present(viewControllerToPresent, animated: flag, completion: completion)
    }

}
