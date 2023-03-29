//
//  Blur.swift
//  AdvancedWeatherSwiftUI
//
//  Created by Deniz Ata Eş on 30.03.2023.
//

import SwiftUI

class UIBackdropView: UIView{
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIBackdropView {
        UIBackdropView()
    }
    
    func updateUIView(_ uiView: UIBackdropView, context: Context) {
        
    }
}

struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = false
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
