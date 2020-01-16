public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String bbb = new String();
  
  for(int i=0; i<word.length(); i++){
    if(Character.isLetter(word.charAt(i))){
      bbb= bbb + (word.substring(i,i+1));
    }
  }
  bbb = bbb.toLowerCase();
  if(bbb.equals(reverse(word))){
    return true;
  }
  return false;
}


public String reverse(String str)
{

    String sNew = new String();
    //your code here
    ArrayList <String> bob = new ArrayList ();

    for(int i=0; i<str.length(); i++){
      if(Character.isLetter(str.charAt(i))){
        sNew= sNew + (str.substring(i,i+1));
      }
    }
    String aaa = new String();
    for(int i=sNew.length(); i>0;i--){
      aaa+=sNew.substring(i-1,i);
    }
    aaa =aaa.toLowerCase();
    return aaa;
}

