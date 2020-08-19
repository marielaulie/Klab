//
//  Helse.swift
//  Klab1
//
//  Created by Mariel Aulie Hinderaker on 28/07/2020.
//  Copyright © 2020 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit
import AVKit

class Helse: UIViewController {
    
  


    @IBAction func helseInfo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Ambulanselærling", ofType: "mp4"){
                             let video = AVPlayer(url: URL(fileURLWithPath: path))
                             let videoPlayer = AVPlayerViewController()
                             videoPlayer.player = video
                                      
                             present(videoPlayer, animated: true, completion:
                                 {
                                     video.play()
                                     
                             })
                                  }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
