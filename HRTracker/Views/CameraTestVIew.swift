//
//  CameraTestVIew.swift
//  HRTracker
//
//  Created by Sean Conrad on 2/11/21.
//

import Foundation
import UIKit
import SwiftUI
import AVFoundation

struct CameraViewController<Page: View>: UIViewControllerRepresentable {
    
    typealias UIViewType = AVCaptureVideoPreviewLayer
    
    func makeUIViewController(context: Context) -> UIViewController {
        let cameraViewController = UIViewController()

        return cameraViewController
    }
    
    func updateUIViewController(_ cameraViewController: UIViewController, context: Context) {
        
    }

//    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
//        guard let layer = layer as? AVCaptureVideoPreviewLayer else {
//            fatalError("Expected `AVCaptureVideoPreviewLayer` type for layer. Check PreviewView.layerClass implementation.")
//        }
//        return layer
//    }
}

public struct Photo: Identifiable, Equatable {
//    The ID of the captured photo
    public var id: String
//    Data representation of the captured photo
    public var originalData: Data
    
    public init(id: String = UUID().uuidString, originalData: Data) {
        self.id = id
        self.originalData = originalData
    }
}

public struct AlertError {
    public var title: String = ""
    public var message: String = ""
    public var primaryButtonTitle = "Accept"
    public var secondaryButtonTitle: String?
    public var primaryAction: (() -> ())?
    public var secondaryAction: (() -> ())?
    
    public init(title: String = "", message: String = "", primaryButtonTitle: String = "Accept", secondaryButtonTitle: String? = nil, primaryAction: (() -> ())? = nil, secondaryAction: (() -> ())? = nil) {
        self.title = title
        self.message = message
        self.primaryAction = primaryAction
        self.primaryButtonTitle = primaryButtonTitle
        self.secondaryAction = secondaryAction
    }
}
