//
//  UIApplication+Extension.swift
//  MySecureApp
//
//  Created by Tibor Waxmann on 20.03.2022.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
