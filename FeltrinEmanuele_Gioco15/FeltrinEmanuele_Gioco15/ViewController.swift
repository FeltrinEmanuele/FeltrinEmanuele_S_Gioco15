//
//  ViewController.swift
//  FeltrinEmanuele_Gioco15
//
//  Created by EMANUELE FELTRIN on 30/10/2019.
//  Copyright © 2019 EMANUELE FELTRIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var arrayGioco = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func Mescola(arrayGioco: [Int]) -> [Int]{
        let NumInversioni:Int = NumeroInversioni();
        
        for i in 1...NumInversioni  {
            var a=Int.random(in:0..<15);
            var b=Int.random(in:0..<15);
            while arrayGioco[a]<=arrayGioco[b] || a<=b {
                 a=Int.random(in:0..<15);
                 b=Int.random(in:0..<15);
            }
            swap(&arrayGioco[a],&arrayGioco[b])
            
            var c=arrayGioco[a];
            arrayGioco[a] = b;
            arrayGioco[b] = c;
            
        }
        
        
        
    }
    
    
    
    
    func NumeroInversioni() -> Int {
        let RandomInt=Int.random(in:40..<100);
        return RandomInt
        }
        
    }
    
    
    
    







