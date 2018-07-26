
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundFileArray = ["note1","note2","note3","note4","note5","note6","note7"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playAudio(soundFileName: soundFileArray[sender.tag-1]);
    }
    
    func playAudio(soundFileName:String){
        
        let soundURL = Bundle.main.url(forResource: soundFileName , withExtension: "wav");
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!);
        }
        catch {
            print(error);
        }
        audioPlayer.play();
    }
    
  

}

