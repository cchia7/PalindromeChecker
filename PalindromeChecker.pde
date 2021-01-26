public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  word = noSpaces(word);
  word = onlyLetters(word);
  word = word.toLowerCase();
  if(word.equals(reverse(word))){
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length();i > 0;i--){
      sNew = sNew + str.substring(i-1,i);
    }
    return sNew;
}

public String noSpaces(String s){
  String yeet = new String();
  int count = 0;
  for(int j = 0; j < s.length();j++){
      if(s.substring(j,j+1).equals(" ")){
        count++;
      }
      else{
        yeet = yeet + s.substring(count,count+1);
        count++;
      }
    }
    return yeet;
}

public String onlyLetters(String sString){
  String sThing = new String();
  for(int k = 0; k < sString.length();k++){
    if(Character.isLetter(sString.charAt(k)) == true){
      sThing = sThing + sString.charAt(k);
    }
  }
  return sThing;
}
