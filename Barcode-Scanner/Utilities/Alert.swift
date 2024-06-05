//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Uzair Ahmed on 2024-06-04.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "invalid Device Input", message: "Something is Wrong with the camera", dismissButton: .default(Text("ok")))
}
