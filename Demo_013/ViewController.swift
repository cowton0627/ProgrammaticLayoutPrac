//
//  ViewController.swift
//  Demo_013
//
//  Created by 鄭淳澧 on 2021/7/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    private let width = UIScreen.main.bounds.size.width
    private let height = UIScreen.main.bounds.size.height

    override func viewDidLoad() {
        super.viewDidLoad()
        let obamaImage = UIImage(named: "555.jpg")
        let obamaImgView = UIImageView(frame: CGRect(x: 0,
                                                     y: height / 9,
                                                     width: 352,
                                                     height: 440))
        obamaImgView.image = obamaImage
        obamaImgView.center = CGPoint(x: width / 2,
                                        y: height / 2)
        obamaImgView.alpha = 0.7
        
        let sloganLabel = makeLabel(width: 250, height: 40)
        sloganLabel.center = CGPoint(x: width / 2,
                                     y: height / 2 + 100)
        sloganLabel.text = "讓美國再次偉大"
        sloganLabel.textAlignment = .center
        sloganLabel.textColor = #colorLiteral(red: 1, green: 0.3921568627, blue: 0.3921568627, alpha: 0.8470588235)
        sloganLabel.font = UIFont.systemFont(ofSize: 30)
        
        obamaImgView.layer.borderWidth = 15
        obamaImgView.layer.borderColor = #colorLiteral(red: 0.4117647059, green: 1, blue: 0.4117647059, alpha: 0.8470588235)
        obamaImgView.layer.cornerRadius = 15
        obamaImgView.clipsToBounds = true
        
        var emojiLabel = makeLabel(width: 30, height: 30)
        emojiLabel.font = UIFont.systemFont(ofSize: 50)
        emojiLabel.text = "🇨🇳"
        
        emojiLabel.translatedBy(x: 50, y: 50)
        emojiLabel.translatedBy(x: 10, y: 20)
        emojiLabel.transform = CGAffineTransform.identity.translatedBy(x: 10, y: 20).scaledBy(x: 1.5, y: 1.5)

        let xiImgView = UIImageView(frame: CGRect(x: 20,
                                                  y: 20,
                                                  width: 30,
                                                  height: 30))
        xiImgView.image = UIImage(named: "Xi")
        
//        let emojiLabelSize = CGSize(width: 30, height: 30)
//        let translationFactor: CGFloat = 1.5
//        let rotationMultiplier: CGFloat = 11.25
        let aDegree = CGFloat.pi / 180
        var count = 0
        
        for i in 1...5 {
            for j in 1...5 {
//                for k in 1...4 {
                if i == 1 || i == 5 || j == 1 || j == 5 {
//                        if (k % 4 == 0) {
                    count = count + 4
                    emojiLabel = UILabel(frame: CGRect(x: -50,
                                                      y: -60,
                                                      width: 30,
                                                      height: 30))

                    
                    emojiLabel.text = "🇨🇳"
                    obamaImgView.addSubview(emojiLabel)
                    emojiLabel.translatedBy(
                        x: (obamaImgView.bounds.width / 5) * CGFloat(i),
                        y: (obamaImgView.bounds.height / 5) * CGFloat(j)
                    )
                    
                    emojiLabel.scaledBy(x: 1.5, y: 1.5)
                    
                    emojiLabel.rotated(by: (aDegree * 11.25 * CGFloat(count)))
                    
//                    emojiLabel.transform = CGAffineTransform.identity.translatedBy(x:(obamaImgView.bounds.width / 5) * CGFloat(i), y: (obamaImgView.bounds.height / 5) * CGFloat(j)).scaledBy(x: 1.5, y: 1.5).rotated(by: (aDegree * 11.25 * CGFloat(count)))
//                        }
                }
//                }
            }
        }
        
        //                for k in 1...j {
        //                .rotated(by: (someDegree * 45 * CGFloat(k)))
        //                }
        
//        someLabel.transform = CGAffineTransform(rotationAngle: someDegree * 45)
//        someLabel.transform = CGAffineTransform.identity.rotated(by: someDegree * 90).scaledBy(x: 1.5, y: 1.5)
//        someLabel.transform = CGAffineTransform.identity.scaledBy(x: 1.5, y: 1.5).translatedBy(x: 10, y: 20)
        

        self.view.addSubview(obamaImgView)
        self.view.addSubview(sloganLabel)
//        self.view.addSubview(emojiLabel)
        self.view.addSubview(xiImgView)
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

extension CGRect {
    init(width: CGFloat, height: CGFloat) {
        self.init(x: 0, y: 0, width: width, height: height)
    }
}

extension ViewController {
    private func makeView(width: CGFloat, height: CGFloat) -> UIView {
        return UIView(frame: CGRect(width: width,
                                    height: height))
    }
    
    private func makeImgView(width: CGFloat, height: CGFloat) -> UIImageView {
        return UIImageView(frame: CGRect(width: width,
                                         height: height))
    }
    
    private func makeBtn(width: CGFloat, height: CGFloat) -> UIButton {
        return UIButton(frame: CGRect(width: width,
                                      height: height))
    }
    
    private func makeLabel(width: CGFloat, height: CGFloat) -> UILabel {
        return UILabel(frame: CGRect(width: width, height: height))
    }
}

extension UIView {
    func translatedBy(x: CGFloat, y: CGFloat) {
        self.transform = self.transform.translatedBy(x: x, y: y)
    }
    
    func scaledBy(x: CGFloat, y: CGFloat) {
        self.transform = self.transform.scaledBy(x: x, y: y)
    }
    
    func rotated(by angle: CGFloat) {
        self.transform = self.transform.rotated(by: angle)
    }
}

