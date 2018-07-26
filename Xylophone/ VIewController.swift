
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav");
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!);
        }
        catch {
            print(error);
        }
        audioPlayer.play();
    }
    
  

}

