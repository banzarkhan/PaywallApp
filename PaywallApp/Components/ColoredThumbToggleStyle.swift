import SwiftUI

struct ColoredThumbToggleStyle: ToggleStyle {
    var onThumbColor: Color = .black
    var offThumbColor: Color = .white
    var onTrackColor: Color = .accentColor
    var offTrackColor: Color = .gray

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(configuration.isOn ? onTrackColor : offTrackColor)
                    .frame(width: 50, height: 30)
                Circle()
                    .fill(configuration.isOn ? onThumbColor : offThumbColor)
                    .frame(width: 24, height: 24)
                    .offset(x: configuration.isOn ? 10 : -10)
                    .animation(.easeInOut(duration: 0.2), value: configuration.isOn)
            }
            .onTapGesture { configuration.isOn.toggle() }
        }
    }
}
