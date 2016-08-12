//
//  PartyCell.swift
//  partyRockApp
//
//  Created by marvin evins on 8/12/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet var VideoPreviewImg: UIImageView!

    @IBOutlet var VideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock){
        
        
        VideoTitle.text = partyRock.videoTitle
        //to do: set image from url
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync{
                    self.VideoPreviewImg.image =
                        UIImage(data: data)
                }
            } catch {
                
            }
        }
        
    }

}
