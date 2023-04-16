int vowelIndex = -1;
boolean quInWord = false;
boolean firstConsonant = false;
public void setup()
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}



public int findFirstVowel(String word) {
  String vowels = "aeiou";
  for (int i = 0; i< word.length(); i++)
  {
    if (vowels.contains(word.substring(i, i+1)))
    {
      return vowelIndex = i;
    }
  }
  return vowelIndex = -1;
}


public boolean containsqu(String word) {
  String quString = "qu";
  for (int i = 0; i< 2; i++)
  {
    if (quString.contains(word.substring(i, i+1)))
    {
      return quInWord = true;
    }
  }
  return quInWord = false;
}
public boolean startsWithConsonant (String word) {
  String vowels = "aeiou";
  for (int i = 0; i< 1; i++)
  {
    if (vowels.contains(word.substring(i, i+1)))
    {
      return firstConsonant = false;
    }
  }
  return quInWord = true;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{

  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if
    (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  } else if
    (containsqu(sWord) == true)
  {
    return sWord.replace("qu", "") + "quay";
  } else if
    (startsWithConsonant(sWord) == true)
  {
    String firstChar = sWord.substring(0, findFirstVowel(sWord));
    return sWord.replace(firstChar, "") + firstChar + "ay";
  } else
  {
    return "ERROR!";
  }
}
