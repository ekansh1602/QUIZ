//
//  ViewController.swift
//  quiz
//
//  Created by Ekansh Anand on 06/09/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionlabel: UILabel!
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    
    @IBOutlet weak var button3: UIButton!
    
    
    @IBOutlet weak var button4: UIButton!
    
    
    @IBOutlet weak var answer: UILabel!
    
    
    @IBOutlet weak var answerview: UIView!
    
  
    
    var correctanswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setupafter loading the view, typically from a nib.
        questions()
        hide()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func button1action(_ sender: AnyObject) {
        if correctanswer == "1"{
            answerview.backgroundColor = UIColor.green
            answer.text = "RIGHT"
            
        }
        else {
                answerview.backgroundColor = UIColor.red
            answer.text = "WRONG"
            }
        unhide()
        
    }
    
    
   
    @IBAction func button2action(_ sender: AnyObject) {
        
        if correctanswer == "2"{
            answerview.backgroundColor = UIColor.green
            answer.text = "RIGHT"
        }
        else{
                answerview.backgroundColor = UIColor.red
            answer.text = "WRONG"
            }
           unhide()
    }
    
    
    @IBAction func button3action(_ sender: AnyObject) {
        
        if correctanswer == "3"{
            answerview.backgroundColor = UIColor.green
            answer.text = "RIGHT"
        }
        else{
                answerview.backgroundColor = UIColor.red
            answer.text = "WRONG"
            }
           unhide()
    }
   
    
    @IBAction func button4action(_ sender: AnyObject) {
        
        if correctanswer == "4"{
            answerview.backgroundColor = UIColor.green
            answer.text = "RIGHT"
        }
        else{
            answerview.backgroundColor = UIColor.red
            answer.text = "WRONG"
        }
          unhide()
    }
    
    
    
    @IBAction func nextquestion(_ sender: AnyObject) {
        
       questions()
    }
    
    func hide(){
        answer.isHidden = true
        // initially answer label is hidden
    }
    
    func unhide(){
        answer.isHidden = false
        //whenver button is pressed unhide the answer label
        
    }
    
    
    
    
    func questions()
    {
        var number = arc4random() % 10
        number+=1
        // if not initialised than case would start from 0 and not from 1
        
        switch(number){
            
          // 1 defines if the number variable is 1 and so on till 10 cases
            
            
        case 1:
            
            questionlabel.text = "what is 2+2"
            button1.setTitle("4", for: UIControlState())
            button2.setTitle("8", for: UIControlState())
            button3.setTitle("0", for: UIControlState())
            button4.setTitle("12", for: UIControlState())
            correctanswer = "1"
            break
            
        case 2:
            
            questionlabel.text = "which is the national animal of INDIA"
            button1.setTitle("snake", for: UIControlState())
            button2.setTitle("tiger", for: UIControlState())
            button3.setTitle("elephant", for: UIControlState())
            button4.setTitle("lion", for: UIControlState())
            correctanswer = "2"
            break
            
        case 3:
            
            questionlabel.text = "what is the capital of INDIA"
            button1.setTitle("mumbai", for: UIControlState())
            button2.setTitle("new delhi", for: UIControlState())
            button3.setTitle("chennai", for: UIControlState())
            button4.setTitle("srinagar", for: UIControlState())
            correctanswer = "2"
            break
            
        case 4:
            
            questionlabel.text = "who is known as the father of nation"
            button1.setTitle("subhash chandra bose", for: UIControlState())
            button2.setTitle("mahatma gandhi", for: UIControlState())
            button3.setTitle("nehru", for: UIControlState())
            button4.setTitle("none of the above", for: UIControlState())
            correctanswer = "4"
            break
            
        case 5:
            
            questionlabel.text = "which is the biggest animal among the following"
            button1.setTitle("ant", for: UIControlState())
            button2.setTitle("giraffe", for: UIControlState())
            button3.setTitle("dog", for: UIControlState())
            button4.setTitle("blue whale", for: UIControlState())
            correctanswer = "4"
            break
            
        case 6:
            
            questionlabel.text = "which animal has 3 hearts"
            button1.setTitle("octopus", for: UIControlState())
            button2.setTitle("cat", for: UIControlState())
            button3.setTitle("monkey", for: UIControlState())
            button4.setTitle("fish", for: UIControlState())
            correctanswer = "1"
            break
            
        case 7:
            
            questionlabel.text = "what is 0 - 0"
            button1.setTitle("0", for: UIControlState())
            button2.setTitle("-1", for: UIControlState())
            button3.setTitle("10", for: UIControlState())
            button4.setTitle("9", for: UIControlState())
            correctanswer = "1"
            break
            
        case 8:
            
            questionlabel.text = "which is the largest country in the world"
            button1.setTitle("china", for: UIControlState())
            button2.setTitle("australia", for: UIControlState())
            button3.setTitle("russia", for: UIControlState())
            button4.setTitle("INDIA", for: UIControlState())
            correctanswer = "3"
            break
            
        case 9:
            
            questionlabel.text = "which is fastest animal on the planet"
            button1.setTitle("cheetah", for: UIControlState())
            button2.setTitle("rabbit", for: UIControlState())
            button3.setTitle("tiger", for: UIControlState())
            button4.setTitle("wolf", for: UIControlState())
            correctanswer = "1"
            break
            
        case 10:
            
            questionlabel.text = "major dhyanchand played which sport"
            button1.setTitle("hockey", for: UIControlState())
            button2.setTitle("cricket", for: UIControlState())
            button3.setTitle("football", for: UIControlState())
            button4.setTitle("lawn tennis", for: UIControlState())
            correctanswer = "1"
            break
            
        default:
            break
            
            
        }
        
    }


}

