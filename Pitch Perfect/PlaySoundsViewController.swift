//
//  PlaySOundsViewController.swift
//  Pitch Perfect
//
//  Created by Roman Boyarov on 10/23/15.
//  Copyright © 2015 Roman Boyarov. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            let filePathUrl = NSURL.fileURLWithPath(filePath)
            do {
                try audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl)
            } catch {
                print("couldn't create audio player from path reference")
            }
            
        }else {
            print("the filePath is Empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowSound(sender: AnyObject) {
        audioPlayer.play()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
