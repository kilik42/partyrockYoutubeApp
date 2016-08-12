//
//  PartyRock.swift
//  partyRockApp
//
//  Created by marvin evins on 8/12/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import Foundation


class PartyRock {
    
    private var _imageURL: String!
    
    private var _videoURL: String!
    
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL:String, videoURL: String,  videoTitle: String!){
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    
}
