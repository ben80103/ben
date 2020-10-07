package coreservlets.tags;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;
import java.math.*;
import coreservlets.*;

/** Generates a prime of approximately 50 digits.
 *  (50 is actually the length of the random number
 *  generated -- the first prime above that number will
 *  be returned.)
 */

public class SimplePrimeTag extends TagSupport {
  protected int len = 50;
  
  public int doStartTag() {
    try {
      JspWriter out = pageContext.getOut();
      BigInteger prime = Primes.nextPrime(Primes.random(len));
      out.print(prime);
    } catch(IOException ioe) {
      System.out.println("Error generating prime: " + ioe);
    }
    return(SKIP_BODY);
  }
}
