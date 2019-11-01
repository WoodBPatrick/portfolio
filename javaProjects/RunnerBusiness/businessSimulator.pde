{System.out.println("Welcome to the business simulator\nIn this game, you will try to improve your business by investing, hiring employees, and advertisements");
System.out.println("");
System.out.println("You may start by selecting which action you wish to proceed with");
System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");
}
businessMain business = new businessMain(1000);
void setup() {
  size(137, 950);
}
class businessMain{
  private double cusSat;
  private double money;
  private int employee;
  private double costs;
  private double ad;
  private double turns;
  public businessMain(int m){
    cusSat=.1;
    money=m;
    employee=0;
    costs=20;
    ad=0;
    turns=0;
  }

  public double money(){
    return money;}
  public void hire1(){
    employee+=1;
    System.out.println("Current amount of employees: "+employee);}
  public void hire5(){
    employee+=5;
    System.out.println("Current amount of employees: "+employee);}
  public void hire10(){
    employee+=10;
    System.out.println("Current amount of employees: "+employee);}
 
  public int employee(){
    return employee;}
    
  public double getMoney(){
    return Math.round(money);}
    
  public void money5(){
    if(money-100>1){
      money=money-100;
      cusSat+=.05;}
    else System.out.println("Sorry, you don't have enough funds to invest this amount");}
  public void money10(){
      if(money-1000>1){
      money=money-1000;
      cusSat+=.1;}
    else System.out.println("Sorry, you don't have enough funds to invest this amount");}
  public void money30(){
    if(money-10000>1){
      money=money-10000;
      cusSat+=.25;}
    else System.out.println("Sorry, you don't have enough funds to invest this amount");}
  
  public double employeeCost(){
  money-=employee*10;
  return employee*10;}
  
  public double preMoney(double i){
    return i;}
  
  public double dailyEarnings(){
    double temp=money;
    money+=money*cusSat+(11*employee)-employeeCost()-costs();
    turns+=20;
    return Math.round(money-temp);}
  
  public boolean bankrupt(){
    if(money<1)
      return true;
    else 
      return false;}
    
  public void advertP(){
    ad=ad+25;
    cusSat+=.1;}
  public void advertB(){
    ad=ad+50;
    cusSat+=.25;}
  public void advertTV(){
    ad=ad+100;  
    cusSat+=.55;}
  public void calcAd(){
    money-=ad;}
  public double getAd(){
    return ad;}
  
  public double getcusSat(){
    return cusSat;}
    
  public double costs(){  
    costs+=turns;
    return costs;}
  
  public double calcCosts(){
    money-=costs;
    return costs;}
  
  public String theft(double i){
    money-=i;
    return "You have lost "+i+" due to a robbery\nCurrent Balance: "+getMoney();}}
