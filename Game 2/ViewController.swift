import UIKit

class ViewController: UIViewController {
    
    var data = Array(repeating: "-", count: 9)
    var cross = "X"
    var zero = "O"
    var curantCross = true
    var count = 9
    
    @IBOutlet var allButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func allButtonAction(_ sender: UIButton) {
        //TODO: Handle OddEven Turn
        
        if (curantCross == true)
        {
            data[sender.tag] = cross
            sender.setTitle(cross, for: .normal)
            curantCross = false
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
        if(data != ["-"])
        {
            count-=1;
        }
        if (count == 0)
        {
            count = 9
            alrt()
        }
        print(count)
    }
    
    func alrt() {
        
        let arlt = UIAlertController(title: "Reset", message: "Reset", preferredStyle: .actionSheet)
        arlt.addAction(UIAlertAction(title: "Reset", style: .default, handler: { _ in
            self.resetData()
            
        }))
        present(arlt, animated: true)
    }
    
    func resetData() {
        for button in allButton {
            button.setTitle("-", for: .normal)
            button.isEnabled = true
        }
    }
    
    
}

//TODO: Handle Override cancellation, If Override cancellation Turn will not Change

//TODO: If Board Full Erase Board

//TODO: Check Win State

//TODO: Check Draw State
