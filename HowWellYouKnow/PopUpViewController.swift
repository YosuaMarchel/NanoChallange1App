//
//  PopUpViewController.swift
//  HowWellYouKnow
//
//  Created by Yosua Marchel on 10/03/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var viewPopUp: UIView!
    @IBOutlet weak var textName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        viewPopUp.layer.cornerRadius = 20
        viewPopUp.layer.masksToBounds = true
        self.showAnimate()
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
        self.removeAnimate()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                    self.view.removeFromSuperview()
                }
        });
    }
    
}
