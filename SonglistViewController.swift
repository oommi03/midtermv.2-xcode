//
//  SonglistViewController.swift
//  midtermexam
//
//  Created by Teerawat kumsila on 5/20/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class SonglistViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var songname = Song()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tableView: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songname.songname.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "songlistCell")
        cell.textLabel?.text = songname.songname[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SonginfoViewController") as? SonginfoViewController
        nextVC?.namesong.namesong = songname.songname[indexPath.row]
        self.present(nextVC!, animated: true, completion: nil)
    }
        
    

 
    

}

