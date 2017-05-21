//
//  Song.swift
//  midtermexam
//
//  Created by Teerawat kumsila on 5/20/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import Foundation

class Song {
    var songname = [ "Hello","ComeToMe","ColdWater","WhereThemGirlsAt","BlowYourMind"
    ,"LoveonMe","ThinkingAboutYou","KeepitMello","OneNightOnly","Wants"]
    
    private var _namesong = ""
    var namesong : String {
        get {
            return _namesong
        }
        set {
            self._namesong = newValue
        }
    }
   
}
