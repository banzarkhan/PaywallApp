import SwiftUI

struct PriceToggleView: View {
    @Binding var paywall: Paywall
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .fill(.grayDark)
                .frame(height: 72)
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("$\(String(format: "%.2f", paywall.price))/week")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.white)
                    if paywall.isTrialPeriodActive {
                        Text("Start with \(paywall.freeTrialPeriod)-Day Free Trial")
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundStyle(.accent)
                    }
                    Text("Cancel any time")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundStyle(.grayText)
                }
                
                Spacer()
                Toggle("", isOn: $paywall.isTrialPeriodActive)
                    .toggleStyle(ColoredThumbToggleStyle())
            }
            .padding(.horizontal, 16)
        }
    }
}

//"$\(String(format: "%.2f", price))/week"
