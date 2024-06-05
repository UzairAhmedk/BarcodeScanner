//
//  BarcodeScannerViewModel.swift
//  Barcode-Scanner
//
//  Created by Uzair Ahmed on 2024-06-04.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
       scannedCode.isEmpty ? .red : .green
    }
}

