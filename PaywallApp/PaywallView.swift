import SwiftUI

struct PaywallView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = PaywallViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 48) {
                    Image(.hand)
                    Image(.pwInfo)
                }
                Spacer()
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        PriceToggleView(paywall: $viewModel.paywall)
                        Button {
                            viewModel.makePurchase()
                        } label: {
                            Text(viewModel.purchaseButtonTitle)
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundStyle(.black)
                                .frame(maxWidth: .infinity)
                                .frame(height: 72)
                                .background(
                                    RoundedRectangle(cornerRadius: 100)
                                        .fill(.accent)
                                )
                        }
                    }
                    FooterButtonsView { button in
                        viewModel.handleFooterButtonTap(for: button)
                    }
                }
            }
            .padding()
            .background(
                LinearGradient(colors: [.black, .gdBottom], startPoint: .top, endPoint: .bottom)
            )
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "multiply")
                            .font(.system(size: 19))
                            .foregroundStyle(.grayButton)
                            .frame(width: 32, height: 32)
                    }
                }
            }
        }
    }
}

#Preview {
    PaywallView()
}
