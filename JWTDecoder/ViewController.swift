//
//  ViewController.swift
//  JWTDecoder
//
//  Created by K, Senthil Kumar  on 02/09/21.
//

import UIKit
import JWTDecode


class ViewController: UIViewController {
    
    let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRjdG1zbW9iaWxlNjciLCJncm91cHMiOlsid3dNb2JpbGUtQS1Nb2JpbGVTY2FubmVyLURFViJdLCJpYXQiOjE2MzA1NzExODgsImV4cCI6MTYzMDU3ODM4OH0.a2S2s6oklZHT-xmN0BMIKS9eZj49L4clu7SVn85bgOA"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let jwt = try? decode(jwt: token)
        print(jwt!.issuedAt!)
        print(jwt!.expiresAt!)
        print(jwt!.expired)
        
     
        
        print(jwt!.body)

    }


}

