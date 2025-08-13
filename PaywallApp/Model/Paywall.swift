import SwiftUI

struct Paywall {
    var price: Double
    var freeTrialPeriod: Int
    var isTrialPeriodActive: Bool
    
    // MARK: Для отображения во вью
    init(price: Double = 5.99, freeTrialPeriod: Int = 3, isTrialPeriodActive: Bool = false) {
        self.price = price
        self.freeTrialPeriod = freeTrialPeriod
        self.isTrialPeriodActive = isTrialPeriodActive
    }
}
