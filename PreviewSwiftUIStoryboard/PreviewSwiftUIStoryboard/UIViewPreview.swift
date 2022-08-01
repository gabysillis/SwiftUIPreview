import UIKit
import SwiftUI

#if canImport(SwiftUI) && DEBUG

/// Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view.
struct UIViewPreview<View: UIView>: UIViewRepresentable {
    private let view: View
    
    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    func makeUIView(context: Context) -> View {
        view
    }
    
    func updateUIView(_ uiView: View, context: Context) {
        uiView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        uiView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}


/// Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view controller.
struct ViewControllerPreview: UIViewControllerRepresentable {
    private let viewControllerBuilder: () -> UIViewController
    
    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

#endif
