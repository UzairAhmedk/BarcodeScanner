//
//  ScannerView.swift
//  Barcode-Scanner
//
//  Created by Uzair Ahmed on 2024-06-04.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String 
    @Binding var alertItem: AlertItem?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        func didfind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: cameraError) {
            switch error {
                    case .invalidDeviceInput:
                        // Handle invalid device input error
                        scannerView.alertItem = AlertContext.invalidDeviceInput
                    }
        }
    }
    
}
