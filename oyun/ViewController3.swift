//
//  ViewController3.swift
//  oyun
//
//  Created by Yusuf Burak Elkan on 15.11.2021.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var İmage: UIImageView!
    @IBOutlet weak var sonucLabel: UILabel!
    
    var sonuc:Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonuç Ekranı"
        
        
        print(sonuc!)
        
        if sonuc! {
            sonucLabel.text! = "Kazandınız"
            İmage.image = UIImage(named: "mutluyüz")
            
        }else{
            sonucLabel.text! = "Kaybettiniz"
            İmage.image = UIImage(named: "üzgünyüz")
        }
    }
    
    @IBAction func tiklan(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
  

}
