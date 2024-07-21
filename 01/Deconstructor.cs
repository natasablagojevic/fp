public class Socket 
{
  public String IP {get; set;}
  public ushort Port {get; set;}
  private ushort LocalPort {get; setl} 

  public Socket(String ip, ushort port) 
  {
    this.IP = ip;
    this.port = port;
  }

  public (String, ushort) Deconstructor () 
  {
    return (IP, port);
  } 

  // ne mogu da imam:
  public(String, ushort, ushort) Deconstruct()
  {
    return (IP, port, localPort);
  }

  // bolje:
  public void Deconstruct(out string, out port, out localPort)
  {

  }

  

};

// main

Socket s = new Socket("123.123.123.123", 12345);

var (ip, port) = s;