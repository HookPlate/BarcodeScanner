//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by robin tetley on 13/09/2023.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    //gets called automatically when a scannerview gets built
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    //gets called automatically when a scannerview gets built
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
    
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
