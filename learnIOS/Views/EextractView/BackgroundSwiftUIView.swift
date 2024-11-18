

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}
