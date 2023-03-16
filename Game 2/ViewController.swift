import UIKit

class ViewController: UIViewController {
    
    var data = Array(repeating: "", count: 9)
    var cross = "X"
    var zero = "O"
    var curantCross = true
    var count = 9
    
    @IBOutlet var allButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allButton.forEach { i in
            i.layer.borderWidth = 5
            i.layer.borderColor = UIColor.black.withAlphaComponent(0.5).cgColor
        }
    }
    
    @IBAction func allButtonAction(_ sender: UIButton) {
        //TODO: Handle OddEven Turn
        
        if (curantCross == true)
        {
            data[sender.tag] = cross
            sender.setTitle(cross, for: .normal)
            curantCross = false
            allButton.forEach { i in
                i.tintColor = .red
            }
            print(data)
        }
        else
        {
            data[sender.tag] = zero
            sender.setTitle(zero, for: .normal)
            curantCross = true
            print(data)
        }
        sender.isEnabled = false
        dataCheck()
        
    }
    
    func dataCheck() {
        if(data != [""])
        {
            count-=1;
        }
        if (count == 0)
        {
            count = 9
            print(data)
            alrt(title: "Draw")
        }
        checkData()
        print(count)
    }
    
    func alrt(title:String) {
        
        let meseg = "X ="+String(countX) + "\nO ="+String(countO)
        let arlt = UIAlertController(title: title, message: meseg, preferredStyle: .alert)
        arlt.addAction(UIAlertAction(title: "Reset", style: .default, handler: { _ in
            self.resetData()
            self.data = Array(repeating: "", count: 9)
            self.count = 9
        }))
        present(arlt, animated: true)
    }
    
    func resetData() {
        for button in allButton {
            button.setTitle("", for: .normal)
            button.isEnabled = true
        }
    }
    var countX = 0
    var countO = 0
    func checkData() {
        if (data[0] == "X" && data[1] == "X" && data[2] == "X") {
            print("X1")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[3] == "X" && data[4] == "X" && data[5] == "X") {
            print("X2")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[6] == "X" && data[7] == "X" && data[8] == "X") {
            print("X3")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[0] == "X" && data[3] == "X" && data[6] == "X") {
            print("X4")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[1] == "X" && data[4] == "X" && data[7] == "X") {
            print("X5")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[2] == "X" && data[5] == "X" && data[8] == "X") {
            print("X6")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[0] == "X" && data[4] == "X" && data[8] == "X") {
            print("X7")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[2] == "X" && data[4] == "X" && data[6] == "X") {
            print("X8")
            countX+=1
            alrt(title: "X Is Win")
        }
        else if (data[0] == "O" && data[1] == "O" && data[2] == "O") {
            print("O1")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[3] == "O" && data[4] == "O" && data[5] == "O") {
            print("O2")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[6] == "O" && data[7] == "O" && data[8] == "O") {
            print("O3")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[0] == "O" && data[3] == "O" && data[6] == "O") {
            print("O4")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[1] == "O" && data[4] == "O" && data[7] == "O") {
            print("O5")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[2] == "O" && data[5] == "O" && data[8] == "O") {
            print("O6")
            countO+=1
            alrt(title: "O Is Win")
        }
        
        else if (data[0] == "O" && data[4] == "O" && data[8] == "O") {
            print("O7")
            countO+=1
            alrt(title: "O Is Win")
        }
        else if (data[2] == "O" && data[4] == "O" && data[6] == "O") {
            print("O8")
            countO+=1
            alrt(title: "O Is Win")
        }
        
//        var n = 0
//        for i in 0...8 {
//            var r = i/3
//            var c = i%3
//
//            for j in 0...8
//            {
//
//                    if(r==j && data[(3*r)+c]=="X")
//                    {
//                        n=0
//                        print("----------\(n)")
//                    }
//                    else {
//                        n=1
//                    }
//
//            }
//
//            if(n==0)
//            {
//                print("Success")
//                break
//            }
//
//        }
        
    }
    
}

//TODO: Check Win State

//TODO: Check Draw State
