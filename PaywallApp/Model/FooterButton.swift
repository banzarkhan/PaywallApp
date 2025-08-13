import SwiftUI

enum FooterButton: CaseIterable {
    case terms
    case privacy
    case subscriptionPolicy
    
    var label: String {
        switch self {
        case .terms:
            return "Terms"
        case .privacy:
            return "Privacy"
        case .subscriptionPolicy:
            return "Subscription Policy"
        }
    }
}
