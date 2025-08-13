import SwiftUI

final class PaywallViewModel: ObservableObject {
    @Published var paywall: Paywall = Paywall()
    
    @Published var isTerms: Bool = false
    @Published var isPrivacy: Bool = false
    @Published var isSubscription: Bool = false
    
    var purchaseButtonTitle: String {
        if paywall.isTrialPeriodActive {
            "Start Free Trial"
        } else {
            "Continue"
        }
    }
    
    func makePurchase() {
        print("purchase was made")
    }
    
    func handleFooterButtonTap(for button: FooterButton) {
        switch button {
        case .terms:
            isTerms.toggle()
        case .privacy:
            isPrivacy.toggle()
        case .subscriptionPolicy:
            isSubscription.toggle()
        }
    }
}
