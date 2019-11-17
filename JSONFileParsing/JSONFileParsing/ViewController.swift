//
//  ViewController.swift
//  JSONFileParsing
//
//  Created by jabeed on 02/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func jsonParsingFromURL () {
        let url = NSURL(string: "http://theappguruz.in//Apps/iOS/Temp/json.php")
        let request = NSURLRequest(url: url! as URL)
        
        NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) {(response, data, error) in
            //self.startParsing(data: data! as NSData)
        }
    }
    
    func jsonParsingFromFile()
    {
        let path: NSString = Bundle.main.path(forResource: "days", ofType: "json")! as NSString
        let data : NSData = try! NSData(contentsOfFile: path as String, options: NSData.ReadingOptions.dataReadingMapped)
        
       // self.startParsing(data: data)
    }
    
//    func startParsing(data :NSData)
//    {
//        let dict: NSDictionary!=(try! JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.mutableContainers)) as? NSDictionary
//
//        for var i = 0 ; i < (dict.valueForKey("MONDAY") as! NSArray).count ; i++
//        {
//            arrDict.addObject((dict.valueForKey("MONDAY") as! NSArray) .objectAtIndex(i))
//        }
//        for var i = 0 ; i < (dict.valueForKey("TUESDAY") as! NSArray).count ; i++
//        {
//            arrDict.addObject((dict.valueForKey("TUESDAY") as! NSArray) .objectAtIndex(i))
//        }
//        for var i = 0 ; i < (dict.valueForKey("WEDNESDAY") as! NSArray).count ; i++
//        {
//            arrDict.addObject((dict.valueForKey("WEDNESDAY") as! NSArray) .objectAtIndex(i))
//        }
//        tvJSON .reloadData()
//    }
//
//

}

//extension UIViewController:UITableViewDataSource,UITableViewDelegate {
//    public func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//    }
//    
//    
//}
