

import SwiftUI

enum ToastType {
    case error(message: String)
    case success(message: String)
    case warning(message: String)
}

struct Toast<Presenting>: View where Presenting: View {

    /// The binding that decides the appropriate drawing in the body.
    @Binding var isShowing: Bool
    /// The view that will be "presenting" this toast
    let presenting: () -> Presenting
    /// The text to show
    let type: ToastType

    var backgroundColor: Color {
        switch type {
        case .error:
            return Color.red
        case .warning:
            return Color.sunflowerYellow
        case .success:
            return Color.green
        }
    }
    
    var toastMessage: String {
        switch type {
        case .error(let message):
            return message
        case .warning(let message):
            return message
        case .success(let message):
            return message
        }
    }
    
    var toastImage: Image {
        switch type {
        case .error:
            return Image(systemName: "xmark.circle")
        case .warning:
            return Image(systemName: "exclamationmark.triangle")
        case .success:
            return Image(systemName: "checkmark.circle")
        }
    }
    
    var body: some View {
        if self.isShowing {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isShowing = false
                }
            }
        }
        return GeometryReader { geometry in

            ZStack(alignment: .top) {
                self.presenting()
                ZStack {
                    Capsule()
                        .fill(self.backgroundColor)

                    HStack(spacing: 20) {
                            self.toastImage
                            Text(self.toastMessage)
                                .font(Font.system(size: 18,
                                          weight: .regular,
                                          design: .default))
                                .foregroundColor(.gray)
                    }
                } 
                .frame(width: geometry.size.width / 1.25, height: geometry.size.height / 10)
                .opacity(self.isShowing ? 1 : 0)

            }

        }

    }

}

extension View {

    func toast(isShowing: Binding<Bool>, type: ToastType) -> some View {
        Toast(isShowing: isShowing,
              presenting: { self },
              type: type)
    }

}




