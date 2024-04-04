//
//  ViewController.swift
//  gifPlaying
//
//  Created by yoway Li on 2024/4/4.
//

import UIKit

class ViewController: UIViewController {
    
    func sakutaEmitterCell() -> UIView {
        let sakutaEmitterCell = CAEmitterCell()
        sakutaEmitterCell.contents = UIImage(named: "sakura_fubuki")?.cgImage
        sakutaEmitterCell.birthRate = 3
        sakutaEmitterCell.lifetime = 20
        sakutaEmitterCell.velocity = 100
        sakutaEmitterCell.scale = 0.5
        sakutaEmitterCell.scaleRange = 0.3
        sakutaEmitterCell.yAcceleration = 70
        sakutaEmitterCell.emissionRange = CGFloat.pi

        let sakuraEmitterLayer = CAEmitterLayer()
        sakuraEmitterLayer.emitterCells = [sakutaEmitterCell]
        sakuraEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        sakuraEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        sakuraEmitterLayer.emitterShape = .cuboid
        view.layer.addSublayer(sakuraEmitterLayer)
    }
    
    let player = AVPlayer()

    @IBOutlet weak var sakura2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

