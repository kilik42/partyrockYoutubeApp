//
//  ViewController.swift
//  partyRockApp
//
//  Created by marvin evins on 8/11/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class  MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/tEb6sH2RGFo/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1s-x-JYpF5qrzG_Bm6XnrwVtw-Q", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=tEb6sH2RGFo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "LUKE CAGE OFFICIAL TRAILER REACTION - Double Toasted Highlight")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/nsyNWktNYHA/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=3Mu3atXbi0LJadKjQPBlzbKI3DA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=nsyNWktNYHA\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "SUICIDE SQUAD MOVIE REVIEW - Double Toasted Highlight")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2aGsYooRQ7I/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=ZrRCi6z0m6PWCAcTfMb4IYeQFis", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=2aGsYooRQ7I\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "THE KILLING JOKE MOVIE REVIEW - Double Toasted Highlight")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/QYs3SDdTlIg/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=2FPiv2y82eD930rlekFnOM-vgA4", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=QYs3SDdTlIg\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "JUSTICE LEAGUE MOVIE TRAILER REACTION - Double Toasted Highlight")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/6pLeJZjbA_Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=zN_41uux9lG5r5DUBNk_PUmuQzs", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=6pLeJZjbA_Q\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "JASON BOURNE MOVIE REVIEW - Double Toasted Highlight")
        
        //let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=tEb6sH2RGFo\" frameborder=\"0\" allowfullscreen></iframe>"
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
        } else{
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destination = segue.destination as? VideoVC {
        if let party = sender as? PartyRock{
            destination.partyRock = party
        }
            
        }
    }

}

