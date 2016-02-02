public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String barack)
{
  String word = "";
  for(int i=0; i<barack.length(); i++){
    char raul = barack.charAt(i); 
    if(Character.isLetter(raul)){
      word += barack.substring(i, i+1);
    }
  }
word = word.toLowerCase();
  int x = 0;
  for(int i=0; i<word.length()/2; i++){
    if(word.charAt(i) == word.charAt(word.length()-i-1)){
      x++;
    }
  }
  if(x == word.length()/2){
    return true;
  }else return false;
}

