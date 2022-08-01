//
//  ViewController.swift
//  PreviewSwiftUIStoryboard
//
//  Created by Gabriela Sillis on 01/08/22.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}


#if canImport(SwiftUI) && DEBUG 
import SwiftUI

struct VCPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            let view = ViewController()
            return view
        }
        .previewLayout(
            .fixed(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height
            )
        )
    }
}

#endif
