import Foundation


protocol brand {
    func startEngine()
    func stopEngine()
    var EngineIsStart: Bool {get set}
    
}


protocol hasTV {
    func turnOnTV()
    func turnOffTV()
    var tvIsOn: Bool {get set}
    
}

class Camper : brand, hasTV {
    var EngineIsStart: Bool
    var tvIsOn: Bool
    
    init() {
        self.EngineIsStart = false
        self.tvIsOn = false
        
    }
    func startEngine() -> Void {
        if  !self.EngineIsStart{
            print("engine is not start /first you shoud start engine")
            self.startEngine()
            
        }
        
    }
    func stopEngine() -> Void {
        if self.EngineIsStart{
            print("stopEngine")
            self.stopEngine()
        }
        
    }
    
    
    func turnOnTV() -> Void {
        if !self.tvIsOn{
            print("first shoud on TV")
            self.turnOnTV()
        }
        
                
            }
        
        func turnOffTV() -> Void {
            if self.tvIsOn{
                print("TV is on you can watch the TV ")        }
            
            
        }
    }
    
    var A = Camper()
    A.startEngine()
    A.stopEngine()
    A.turnOnTV()
    A.turnOffTV()

