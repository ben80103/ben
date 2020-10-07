package coreservlets.tags;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.tagext.BodyTag;

import java.io.*;

/** A tag that repeats the body the specified
 *  number of times.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2000 Marty Hall; may be freely used or adapted.
 */

public class RepeatTag extends BodyTagSupport {
  private int reps;

  public void setReps(String repeats) {
    try {
      reps = Integer.parseInt(repeats);
    } catch(NumberFormatException nfe) {
      reps = 1;
    }
  }
    
  public int doAfterBody() {
    if (reps-- >= 1) {
      BodyContent body = getBodyContent();
      try {
        JspWriter out = body.getEnclosingWriter();
        out.println(body.getString());
        body.clearBody(); // Clear for next evaluation
      } catch(IOException ioe) {
        System.out.println("Error in RepeatTag: " + ioe);
      }
      //return(EVAL_BODY_TAG); //noted by JHW
      //TagBody.EVAL_BODY_TAG has been deprecated in JSP 1.2 Spec
      //suggest using TagBody.EVAL_BODY_BUFFERED or IterationTag.EVAL_BODY_AGAIN
      
      //return(EVAL_BODY_TAG);
      return(EVAL_BODY_AGAIN);
    } else {
      return(SKIP_BODY);
    }
  }
}
