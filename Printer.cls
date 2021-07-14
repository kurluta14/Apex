public class Printer {
  
    public String textToPrint;    
    
    public Printer(String text){
      this.textToPrint = text;  
    }
    
    public Boolean equals(Object inputObject){
        if(this === inputObject){
            return true;
        }
         
        if((inputObject==null) || (!(inputObject instanceof Printer))){
            return false;
        }else{
            Printer passedMyCustomType = (Printer)inputObject;
            if(this.textToPrint == passedMyCustomType.textToPrint){
                return true;
            } else {
                return false;
            }
        }
    }
    
    public Boolean hashCode(Object obj) {
        return this.equals(obj); 
            
    }
    
         public void print(){
        	System.debug(this.textToPrint);
    }
}