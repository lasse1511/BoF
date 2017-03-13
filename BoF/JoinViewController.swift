//
//  JoinViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit
import FirebaseDatabase

class JoinViewController: UIViewController {

    
    
    
    var ref:FIRDatabaseReference!
    var key: String!
    var commets: NSDictionary = [:]
    var Names: [String] = []

    @IBOutlet var NextBTN: UIButton!
    @IBOutlet var GamenameLBL: UILabel!
    @IBOutlet var NameOfPersTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()	
        GamenameLBL.text = "The name of the game is: " + gameDTO.gameName
        self.ref = FIRDatabase.database().reference()

        // Do any additional setup after loading the view.
        if gameDTO.isCreator == false {NextBTN.isHidden = true}
        else {NextBTN.isHidden = false}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.ref.child(gameDTO.gameName).observe(.childChanged, with: { (snapshot) -> Void in
            self.commets = (snapshot.value as? NSDictionary)!
            
        })
    }
    

/*                builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
 
 public void onClick(DialogInterface dialog, int which) {
 // Do nothing but close the dialog
 Object[] list = NameList.toArray();
 myRef.child(gameName).child(key).setValue("True3401");
 
 for (Object aList : list) {
 if (!logic.NamesOrg.contains(aList.toString()) && !aList.toString().equals("False3401"))
 logic.NamesOrg.add(aList.toString());
 
 }
 
 logic.NamesEdit = logic.NamesOrg;
 Intent i = new Intent(SendNames.this, BetweenScreen.class);
 i.putExtra("NamesEdit", logic.NamesEdit);
 i.putExtra("NamesOrg", logic.NamesOrg);
 i.putStringArrayListExtra("RoundType", logic.RoundType);
 i.putExtra("RoundTime", logic.getRoundTime());
 startActivity(i);
 dialog.dismiss();
 }
 })
     commentsRef.observe(.childAdded, with: { (snapshot) -> Void in
     self.comments.append(snapshot)
     self.tableView.insertRows(at: [IndexPath(row: self.comments.count-1, section: self.kSectionComments)], with: UITableViewRowAnimation.automatic)
;*/
    func setGameStarted() -> Void {
        //var namesList:[String]
        
        self.ref.child(gameDTO.gameName).child(key).setValue("True3401")

    }
 
 
    /*
 Button send = (Button) findViewById(R.id.BTN_Send);
 send.setOnClickListener(new View.OnClickListener(){
 @Override
 public void onClick(View alertView){
 
 myRef.child(gameName).push().setValue(name.getText().toString());
 name.setText("");
 }
 });*/
    @IBAction func SubmitName(_ sender: UIButton) {
            self.ref.child(gameDTO.gameName).setValue(NameOfPersTxt.text)
            self.NameOfPersTxt.text = ""
    }
  /*
    func writeNewPost(withUserID userID: String, username: String, title: String, body: String) {
        // Create new post at /user-posts/$userid/$postid and at
        // /posts/$postid simultaneously
        // [START write_fan_out]
        let key = ref.child("posts").childByAutoId().key
        let post = ["uid": userID,
                    "author": username,
                    "title": title,
                    "body": body]
        let childUpdates = ["/posts/\(key)": post,
                            "/user-posts/\(userID)/\(key)/": post]
        ref.updateChildValues(childUpdates)
        // [END write_fan_out]
    }
*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
