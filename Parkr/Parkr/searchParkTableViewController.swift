//
//  searchParkTableViewController.swift
//  Parkr
//
//  Created by Kevin Nguyen on 6/15/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit

class searchParkTableViewController: UITableViewController {
    
    // properties
    var parkingSpots = [ParkingSpot]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load sample data
        loadSampleStreets()

    }
    
    func loadSampleStreets() {
        let street1 = UIImage(named: "IMG_1966")!
        let street2 = UIImage(named: "IMG_1998")!
        
        let result1 = ParkingSpot(price: "Price: 15", location: "Location: Dallas", instr: "Instructions: Card Access", streetPhoto: street1)
        
        let result2 = ParkingSpot(price: "Price: 20", location: "Location: Los Angeles", instr: "Instructions: None", streetPhoto: street2)
        
        parkingSpots.append(result2!)
        parkingSpots.append(result1!)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return parkingSpots.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "searchParkTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! searchParkTableViewCell
        
        let parkSpot = parkingSpots[indexPath.row]
        cell.priceLabel.text = parkSpot.price
        cell.locationLabel.text = parkSpot.location
        cell.InstrLabel.text = parkSpot.instr
        cell.streetIM.image = parkSpot.streetPhoto

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
