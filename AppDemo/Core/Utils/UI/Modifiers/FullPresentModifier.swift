
import SwiftUI

fileprivate struct FullModalPresent<PresentedView: View>: ViewModifier {

    @Binding var isPresented: Bool
    let presentedView: PresentedView
    let style: ModalAnimationStyle

    func body(content: Content) -> some View {
        GeometryReader { geometry in
            ZStack {
                ZStack {
                    content
                }
                ZStack {
                    Color.clear.edgesIgnoringSafeArea(.all)
                    self.presentedView
                }
                .offset(x: 0, y: yOffset(geometry))
                .opacity(opacity)
            }
        }
    }

    private func yOffset(_ geometry: GeometryProxy) -> CGFloat {
        switch style {
        case .none, .fade:
            return 0
        case .slide:
            return isPresented ? 0 : viewHeight(geometry)
        }
    }

    private var opacity: Double {
        switch style {
        case .none, .slide:
            return 1
        case .fade:
            return isPresented ? 1 : 0
        }
    }

    private func viewHeight(_ proxy: GeometryProxy) -> CGFloat {
        proxy.size.height + proxy.safeAreaInsets.top + proxy.safeAreaInsets.bottom
    }

}

fileprivate struct FullModal<Tag>: ViewModifier {

    let style: ModalAnimationStyle
    @Binding var selection: Tag?
    let presentedView: (Tag?) -> AnyView
    var onDismiss: (() -> Void)?

    init(style: ModalAnimationStyle, selection: Binding<Tag?>, onDismiss: (() -> Void)?, @ViewBuilder builder: @escaping (Tag?) -> AnyView) {
        self.style = style
        self._selection = selection
        self.onDismiss = onDismiss
        presentedView = builder
    }

    func body(content: Content) -> some View {
        GeometryReader { geometry in
            ZStack {
                ZStack { content }
                ZStack {
                    Color.clear.edgesIgnoringSafeArea(.all)
                    self.presentedView(self.selection)
                        .onDisappear(perform: self.onDismiss)
                }
                .offset(x: 0, y: self.yOffset(geometry))
                .opacity(self.opacity)
            }
        }
    }

    private var isPresented: Bool { selection != nil }

    private func yOffset(_ geometry: GeometryProxy) -> CGFloat {
        switch style {
        case .none, .fade:
            return 0
        case .slide:
            return isPresented ? 0 : viewHeight(geometry)
        }
    }

    private var opacity: Double {
        switch style {
        case .none, .slide:
            return 1
        case .fade:
            return isPresented ? 1 : 0
        }
    }

    private func viewHeight(_ proxy: GeometryProxy) -> CGFloat {
        proxy.size.height + proxy.safeAreaInsets.top + proxy.safeAreaInsets.bottom
    }

}

enum ModalAnimationStyle {
    case none
    case slide
    case fade
}

extension View {

    func fullScreen<Item>(style: ModalAnimationStyle = .slide, item: Binding<Item?>, onDismiss: (() -> Void)? = nil, @ViewBuilder builder: @escaping (Item?) -> AnyView) -> some View {
        self.modifier(FullModal(style: style, selection: item, onDismiss: onDismiss, builder: builder))
            .animation(style != .none ? .easeInOut : .none)
    }

    func fullScreen<Content: View>(_ isPresented: Binding<Bool>, view: Content, style: ModalAnimationStyle = .slide) -> some View {
        self.modifier(FullModalPresent(isPresented: isPresented, presentedView: view, style: style))
                .animation(style != .none ? .easeInOut : .none)
    }

    @ViewBuilder func fullScreenAvailable<Content: View>(_ isPresented: Binding<Bool>, view: Content, style: ModalAnimationStyle = .slide) -> some View {
        if #available(iOS 14.0, *) {
            self.fullScreenCover(isPresented: isPresented) {view}
        } else {
            self.fullScreen(isPresented, view: view, style: style)
        }
    }
}

