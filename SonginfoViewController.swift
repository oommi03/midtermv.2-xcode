//
//  SonginfoViewController.swift
//  midtermexam
//
//  Created by Teerawat kumsila on 5/20/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit
import AVFoundation

class SonginfoViewController: UIViewController {
    var namesong = Song()
    var player = AVAudioPlayer()
    
   
    @IBOutlet weak var slidervol: UISlider!
    
    @IBOutlet weak var contentsongLb: UILabel!
    @IBOutlet weak var imagesong: UIImageView!
    @IBOutlet weak var songnameTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupsong()
        // Do any additional setup after loading the view.
    }
   
    override func viewDidDisappear(_ animated: Bool) {
        player.stop()
    }
    func setupsong(){
        let imagesongname = namesong.namesong + ".png"
        songnameTitle.title = namesong.namesong
        imagesong.image = UIImage(named: imagesongname)
        let audiopath = Bundle.main.path(forResource: namesong.namesong,ofType: "mp3")
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audiopath!))
            
        }
        catch {
            //error
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pauseBt(_ sender: Any) {
        player.pause()
    }

    @IBAction func playBt(_ sender: Any) {
        player.play()
    }
    @IBAction func stopBt(_ sender: Any) {
        player.stop()
    }
    
    @IBAction func slider(_ sender: Any) {
        player.volume = Float(slidervol.value)
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
