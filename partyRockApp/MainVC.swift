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
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/tEb6sH2RGFo/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1s-x-JYpF5qrzG_Bm6XnrwVtw-Q", videoURL: "https://www.youtube.com/watch?v=tEb6sH2RGFo", videoTitle: <#T##String!#>)
        
        //let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tEb6sH2RGFo\" frameborder=\"0\" allowfullscreen></iframe>"
        
        
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

}

