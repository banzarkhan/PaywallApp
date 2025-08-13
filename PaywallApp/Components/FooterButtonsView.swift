import SwiftUI

struct FooterButtonsView: View {
    var action: (FooterButton) -> Void = { _ in }
    
    var body: some View {
        HStack(spacing: 30) {
            ForEach(FooterButton.allCases, id: \.self) { button in
                Button {
                    action(button)
                } label: {
                    Text(button.label)
                }
            }
        }
        .font(.system(size: 13))
        .foregroundStyle(.grayButton)
        .padding(.horizontal, 16)
    }
}
