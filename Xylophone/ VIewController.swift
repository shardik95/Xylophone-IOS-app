
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    var soundFile:String = "";
    let soundFileArray = ["note1","note2","note3","note4","note5","note6","note7"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        soundFile = soundFileArray[sender.tag-1];
        playAudio();
    }
    
    func playAudio(){
        
        let soundURL = Bundle.main.url(forResource: soundFile , withExtension: "wav");
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!);
        }
        catch {
            print(error);
        }
        audioPlayer.play();
    }
    
  

}

