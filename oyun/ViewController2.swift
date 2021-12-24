//
//  ViewController2.swift
//  oyun
//
//  Created by Yusuf Burak Elkan on 15.11.2021.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var kalanlabel: UILabel!
    @IBOutlet weak var yardimcilabel: UILabel!
    @IBOutlet weak var sayiText: UITextField!
    @IBOutlet weak var hataliTahmin: UILabel!

    
    var rasgeleSayi:Int?
    var kalanHak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rasgeleSayi = Int.random(in: 0...50) //0 ila 100 arası sayılar
        print("rastgele sayı: \(rasgeleSayi!)")
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gelenVeri = sender as? Bool{
            let gidilecekVC = segue.destination as! ViewController3
            gidilecekVC.sonuc = gelenVeri
        }
        
    }
    
    
    @IBAction func tahminTikla(_ sender: Any) {
       
        yardimcilabel.isHidden = false
        kalanHak -= 1
        
        
        
        
        
        if let veri = sayiText.text{
            if let tahmin = Int(veri){
                if tahmin == rasgeleSayi!{
                    let sonuc = true
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                    return
                    
                }
                
                
                if tahmin > rasgeleSayi!{
                    yardimcilabel.text = "Azalt"
                    kalanlabel.text = "Kalan Hak : \(kalanHak)"
                }
                
                if tahmin < rasgeleSayi!{
                    yardimcilabel.text = "Arttır"
                    kalanlabel.text = "Kalan Hak : \(kalanHak)"
                }
                
                if(kalanHak == 0){
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                }
                sayiText.text = ""
            }
        }
        
        
    }
    
  

}
