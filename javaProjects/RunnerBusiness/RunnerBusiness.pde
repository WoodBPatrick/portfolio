int oneTime1=0, oneTime2=0, oneTime3=0, oneTime4=0, oneTime5=0, oneTime6=0, oneBankrupt=0, s1, s2, s3, s4, s5, s6;
void draw() {
background(204);
  if(business.bankrupt()==false){
    s1 = second(); 
    s2 = second();
    s3 = second(); 
    s4 = second(); 
    s5 = second(); 
    s6 = second();}
  else if(business.bankrupt()==true && oneBankrupt==0){
    s1 = 1; 
    s2 = 1;
    s3 = 1; 
    s4 = 1; 
    s5 = 1; 
    s6 = 1;
    System.out.println("\n\n\n\n\nSorry, you have gone bankrupt, and have lost the game.\nIf you wish to play again, restart the program");oneBankrupt++;}
  
    if(oneTime1==0 && s1==0){
    System.out.println("\n\nPrevious Balance: "+business.preMoney(business.getMoney()));
    System.out.println("You made: "+business.dailyEarnings()+" today");
    System.out.println("Current balance: "+business.getMoney());
    System.out.println("Amount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General Costs: "+business.costs());
    System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements\n");
    oneTime1++;}
  else if(oneTime1!=0 && s1!=0)
    oneTime1=0;
  
  if(oneTime2==0 && s2==10){
    business.calcAd();
    System.out.println("\nAmount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General costs: $"+business.calcCosts());
    System.out.println("Current balance: $"+business.getMoney());
    oneTime2++;}
  else if(oneTime2!=0 && s2!=10)
    oneTime2=0;
  
  if(oneTime6==0 && s3==20){
    business.calcAd();
    System.out.println("\nAmount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General costs: $"+business.calcCosts());
    System.out.println("Current balance: $"+business.getMoney());
    oneTime6++;}
  else if(oneTime6!=0 && s3!=20)
    oneTime6=0;
  
  if(oneTime3==0 && s4==30){
    business.calcAd();
    System.out.println("\nAmount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General costs: $"+business.calcCosts());
    System.out.println("Current balance: $"+business.getMoney());
    oneTime3++;}
  else if(oneTime3!=0 && s4!=30)
    oneTime3=0;
    
    if(oneTime4==0 && s5==40){
    business.calcAd();
    System.out.println("\nAmount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General costs: $"+business.calcCosts());
    System.out.println("Current balance: $"+business.getMoney());
    oneTime4++;}
  else if(oneTime4!=0 && s5!=40)
    oneTime4=0;
    
    if(oneTime5==0 && s6==50){
    business.calcAd();
    System.out.println("\nAmount Paid to Employees: $"+business.employeeCost()+" -  Amount paid for Ads: $"+business.getAd()+" -  General costs: $"+business.calcCosts());
    System.out.println("Current balance: $"+business.getMoney());    oneTime5++;}
  else if(oneTime5!=0 && s6!=50)
    oneTime5=0;
    
  
}

void keyTyped() {
  System.out.println(""+(int)key);
  if((int)key==97){
    System.out.println("\nHow much do you want to invest of your current money:\nd. $100\ne. $1,000\nf. $10,000");
    System.out.println("Current Balance = "+business.getMoney());}
    if((int)key==100){
      business.money5();
      System.out.println("\nCurrent Balance = "+business.getMoney());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
    if((int)key==101){
      business.money10();
      System.out.println("\nCurrent Balance = "+business.getMoney());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
    if((int)key==102){
      business.money30();
      System.out.println("\nCurrent Balance = "+business.getMoney());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
  
  if((int)key==98)
    System.out.println("\nHow many employees to you wish to hire\ng: 1 employee=10$ an hour\nh: 5 employees=50$ an hour\ni: 10 employee=100$ an hour");
    if((int)key==103){
      business.hire1();
      System.out.println("\nCurrent employees = "+business.employee());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
    if((int)key==104){
      business.hire5();
      System.out.println("\nCurrent employees = "+business.employee());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
    if((int)key==105){
      business.hire10();
      System.out.println("\nCurrent employees = "+business.employee());
      System.out.println("Actions:\na. investing\nb. hiring employees\nc. advertisements");}
 
  if((int)key==99)
    System.out.println("\nTypes of advertisement that can be bought:\nj: Print(Low Effectivness) - $25 an hour\nk: Billboards(Medium Effectivness) - $50 an hour\nl: Online/TV(High Effectivness) - $100 an hour");
    if((int)key==106){
      business.advertP();
      System.out.println("\nCurrent cost for ads per hour: $"+business.getAd());}
    if((int)key==107){
      business.advertB();
      System.out.println("\nCurrent cost for ads per hour: $"+business.getAd());}
    if((int)key==108){
      business.advertTV();
      System.out.println("\nCurrent cost for ads per hour: $"+business.getAd());}
}
