//
//  AppStyle.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation
import SwiftUI

enum AppStyle {
    // Font Sizes
    enum FontSize {
        static let title: CGFloat = 17
        static let subtitle: CGFloat = 15
        static let body: CGFloat = 14
        static let footnote: CGFloat = 12
    }
    
    enum IconSize {
        static let small: CGFloat = 24
        static let medium: CGFloat = 44
        static let large: CGFloat = 60
    }
    
    enum SpacingSize {
        static let small: CGFloat = 4
        static let medium: CGFloat = 8
        static let large: CGFloat = 12
        static let extraLarge: CGFloat = 12
    }
}

extension Color {
    static var appTintColor: Color {
        return Color("PuprleColor")
    }
}
