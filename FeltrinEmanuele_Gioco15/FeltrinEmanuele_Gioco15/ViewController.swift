//
//  ViewController.swift
//  FeltrinEmanuele_Gioco15
//
//  Created by EMANUELE FELTRIN on 30/10/2019.
//  Copyright © 2019 EMANUELE FELTRIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelArray: UILabel!
    
    
    var arrayGioco = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0];
    var nInversioni = 0;
   
    
    @IBAction func btn_inizia(_ sender: Any) {
        Mescola();
        labelArray.text = String(nInversioni);
        for n in 0...15
        {
            labelArray.text! += " " + String(arrayGioco[n]);
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func Mescola(){
        let NumInversioni:Int = NumeroInversioni();
        nInversioni = NumInversioni;
        
        for i in 1...NumInversioni  {
            var a=Int.random(in:0..<16);
            var b=Int.random(in:0..<16);
           while (arrayGioco[a]<=arrayGioco[b] || a<=b) {
                 a=Int.random(in:0..<16);
                 b=Int.random(in:0..<16);
            }  //[a]>[b] && a<b
            //arrayGioco[a]<=arrayGioco[b] || a<=b
            let c=arrayGioco[a];
            arrayGioco[a] = arrayGioco[b];
            arrayGioco[b] = c;
        }
    }
    
    
    
    
    func NumeroInversioni() -> Int {
        let RandomInt=Int.random(in:10..<30);
        return RandomInt
        }
        
    }
    
    
    
    







