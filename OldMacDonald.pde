Farm myRanch;

public void setup() 
{     
    myRanch  = new Farm();
    myRanch.animalSounds();
}

class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()     
  {       
    aBunchOfAnimals[0] = new Cow("cow","moo");           
    aBunchOfAnimals[1] = new Chick("chick","cluck","cheep");       
    aBunchOfAnimals[2] = new Pig("pig","oink");    
  }         
  public void animalSounds()    
  {       
    for (int nI=0; nI < aBunchOfAnimals.length; nI++)      
    {          
     System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());       
    }    
  } 
}

interface Animal 
  {    
    public String getSound();        
    public String getType(); 
  }   
  
  class Cow implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Cow(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Cow()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}


 class Pig implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Pig(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Pig()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}


 class Chick implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Chick(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Chick()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public Chick(String type, String sound1, String sound2)
  {
    if(Math.random()<.5)
      mySound = sound2;
    else  
      mySound = sound1;
    myType = type;
  }
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}
