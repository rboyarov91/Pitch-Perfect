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
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            let filePathUrl = NSURL.fileURLWithPath(filePath)
//            
//        }else {
//            print("the filePath is Empty")
//        }
        
        try! audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playQuickSound(sender: UIButton) {
        playAudioAtRate(1.5)
    }
    
    @IBAction func playSlowSound(sender: AnyObject) {
        playAudioAtRate(0.5)
    }
    
    @IBAction func playChipmunkSound(sender: UIButton) {
    }
    func playAudioAtRate(rate: Float){
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
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
