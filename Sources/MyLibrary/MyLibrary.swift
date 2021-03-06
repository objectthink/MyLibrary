import SwiftyNats

public struct MyLibrary {
   public private(set) var text = "Hello, World!"
   
   public init() {
   }
   
   public func connectTest(){
      var client: NatsClient!
      
      // register a new client
      client = NatsClient("http://192.168.86.31:4222")
      
      // listen to an event
      client!.on(NatsEvent.connected) { _ in
         print("Client connected")
      }
      
      // try to connect to the server
      try? client!.connect()
   }
}
