//
//  CaptureImageView.swift
//  TakePhoto
//
//  Created by Marina FERNANDEZ on 11/03/2021.
//

import SwiftUI



struct CaptureImageView {
  /// TODO 2: Implement other things later
    
        /// MARK: - Properties
        @Binding var isShown: Bool
        @Binding var image: Image?

        func makeCoordinator() -> Coordinator {
          return Coordinator(isShown: $isShown, image: $image)
        }
    
}
extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        
        picker.sourceType = .camera
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}

