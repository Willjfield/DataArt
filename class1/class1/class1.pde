/*"Name of Satellite, Alternate Names"  
Country/Org of UN Registry  
Country of Operator/Owner  
Operator/Owner  
Users  
Purpose  
Detailed Purpose  
Class of Orbit  
Type of Orbit  
Longitude of GEO (degrees)  
Perigee (km)  
Apogee (km)  
Eccentricity  
Inclination (degrees)  
Period (minutes)  
Launch Mass (kg.)  
Dry Mass (kg.)  
Power (watts)  
Date of Launch  
Expected Lifetime  
Contractor  
Country of Contractor  
Launch Site  
Launch Vehicle  
COSPAR Number  
NORAD Number  C
omments    
Source Used for Orbital Data  
Source  Source  Source  Source  Source  Source*/
void setup(){
  size(1280,720);
  loadData("satellites.tsv");
}
void draw(){}
void loadData(String url){
    Table t = loadTable(url,"header, tsv");
    for(TableRow row:t.rows()){
      String massStr = row.getString(16);
      massStr = massStr.replaceAll("\"","");
      
      String launchString;
      if(massStr.length()>0){
        println(float (massStr));
        float kg = float(massStr);
        float size = map(sqrt(kg),0,sqrt(2000),0,100);
        ellipse(random(width),random(height),size,size);
      }else{
        println("no mass");
        rect(random(width),random(height),10,10);
      }
      
    }
    /*
    String[] row = loadStrings(url);
    for(String s:row){
      
    }*/
  }
  
  