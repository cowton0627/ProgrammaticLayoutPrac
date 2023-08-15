//
//  ViewController.swift
//  Demo_013
//
//  Created by 鄭淳澧 on 2021/7/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fullScreenSize = UIScreen.main.bounds.size
        let obamaImage = UIImage(named: "555.jpg")
        let obamaImageView = UIImageView(frame: CGRect(x: 0, y: fullScreenSize.height / 9, width: 352, height: 440))
        obamaImageView.image = obamaImage
        obamaImageView.center = CGPoint(x: fullScreenSize.width / 2, y: fullScreenSize.height / 2)
        obamaImageView.alpha = 0.7
        
        let sloganLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 40))
        sloganLabel.center = CGPoint(x: fullScreenSize.width / 2, y: fullScreenSize.height / 2 + 100)
        sloganLabel.text = "讓美國再次偉大"
        sloganLabel.textAlignment = .center
        sloganLabel.textColor = UIColor(red: 1, green: 100/255, blue: 100/255, alpha: 1)
        sloganLabel.font = UIFont.systemFont(ofSize: 30)
        
        obamaImageView.layer.borderWidth = 15
        obamaImageView.layer.borderColor = CGColor(red: 105/255, green: 1, blue: 105/255, alpha: 1)
        obamaImageView.layer.cornerRadius = 15
        obamaImageView.clipsToBounds = true
        
        var someLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        someLabel.font = UIFont.systemFont(ofSize: 50)
        someLabel.text = "🇨🇳"

        var xiImageView = UIImageView(frame: CGRect(x: 20, y: 20, width: 30, height: 30))
        xiImageView.image = UIImage(named: "Xi")
        
//        someLabel.transform = CGAffineTransform(translationX: 50, y: 50)
//        let mirrorSomeLabel
//
//        someLabel.transform = CGAffineTransform(translationX: 10, y: 20)
//        someLabel.transform = CGAffineTransform.identity.translatedBy(x: 10, y: 20).scaledBy(x: 1.5, y: 1.5)
        
        let someDegree = CGFloat.pi / 180
        var count = 0
        
        for i in 1...5 {
            for j in 1...5 {
                for k in 1...4 {
                    if i == 1 || i == 5 || j == 1 || j == 5 {
                        if (k % 4 == 0) {
                            count = count + k
                            someLabel = UILabel(frame: CGRect(x: -50, y: -60, width: 30, height: 30))
                            someLabel.text = "🇨🇳"
                            obamaImageView.addSubview(someLabel)
                            someLabel.transform = CGAffineTransform.identity.translatedBy(x:(obamaImageView.bounds.width / 5) * CGFloat(i), y: (obamaImageView.bounds.height / 5) * CGFloat(j)).scaledBy(x: 1.5, y: 1.5).rotated(by: (someDegree * 11.25 * CGFloat(count)))
                        }
                    }
                }
            }
        }
        
        //                for k in 1...j {
        //                .rotated(by: (someDegree * 45 * CGFloat(k)))
        //                }
        
//        someLabel.transform = CGAffineTransform(rotationAngle: someDegree * 45)
//        someLabel.transform = CGAffineTransform.identity.rotated(by: someDegree * 90).scaledBy(x: 1.5, y: 1.5)
        
//        someLabel.transform = CGAffineTransform.identity.scaledBy(x: 1.5, y: 1.5).translatedBy(x: 10, y: 20)
        

        
        
        
        
        
        
        
        self.view.addSubview(obamaImageView)
        self.view.addSubview(sloganLabel)
//        self.view.addSubview(someLabel)
//        self.view.addSubview(xiImageView)
        
        
        
        
        
        
        
    }

    
    
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
            
        }
        
        typealias UIViewControllerTyper = ViewController
    }
    
    struct ViewControllerView_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
                .previewDevice("iPhone 11 Pro")
        }
    }

    
}

