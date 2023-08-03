//
//  UploadPhotoViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 25.07.2023.
//

import UIKit
import Photos


class UploadPhotoViewController: UIViewController {
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var fromGalleryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackgroundHelper.setBackground2(for: view)

        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
        
    }
    
    @IBAction func fromGalleryButtonTapped(_ sender: UIButton) {
        PHPhotoLibrary.requestAuthorization { status in
            switch status {
            case .authorized:
                // Fotoğraflara erişim izni verildi. Burada fotoğraflara ulaşma işlemlerini yapabilirsiniz.
                self.showGallery()
            case .denied, .restricted:
                // Fotoğraflara erişim izni reddedildi veya kısıtlandı.
                self.showPermissionDeniedAlert()
            case .notDetermined:
                // Kullanıcı henüz izin vermedi. Genellikle bu durumda hiçbir şey yapmazsınız.
                break
            @unknown default:
                break
            }
        }
    }
    
    private func showGallery(){
        
    }
    
    private func showPermissionDeniedAlert(){
        let alert = UIAlertController(
            title: "Erişim İzni Reddedildi",
            message: "Fotoğraflara erişim izni verilmedi. Ayarlardan izin vermeniz gerekmektedir",
            preferredStyle: .alert)
        
        let settingsAction = UIAlertAction(title: "Ayarlar", style: .default) { _ in
            if let settingsURL = URL(string: UIApplication.openSettingsURLString){
                UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Vazgeç", style: .cancel, handler: nil)
        
        alert.addAction(settingsAction)
        alert.addAction(cancelAction)
        
    }
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showUploadPreviewScreen", sender: self)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showPaymentMethodScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showUploadPreviewScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        } else if segue.identifier == "showPaymentMethodScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
}
