package coreservlets.tags;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;
import javax.servlet.*;

/** The else part of an if tag.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2000 Marty Hall; may be freely used or adapted.
 */

public class IfElseTag extends BodyTagSupport {
  public int doStartTag() throws JspTagException {
    IfTag parent =
      (IfTag)findAncestorWithClass(this, IfTag.class);
    if (parent == null) {
      throw new JspTagException("else not inside if");
    } else if (!parent.hasCondition()) {
      String warning =
        "condition tag must come before else tag";
      throw new JspTagException(warning);
    }  
    //return(EVAL_BODY_TAG); //noted by JHW
    //TagBody.EVAL_BODY_TAG has been deprecated in JSP 1.2 Spec
    //suggest using TagBody.EVAL_BODY_BUFFERED or IterationTag.EVAL_BODY_AGAIN
    
    return(EVAL_BODY_BUFFERED);
  }

  public int doAfterBody() {
    IfTag parent =
      (IfTag)findAncestorWithClass(this, IfTag.class);
    if (!parent.getCondition()) {
      try {
        BodyContent body = getBodyContent();
        JspWriter out = body.getEnclosingWriter();
        out.print(body.getString());
      } catch(IOException ioe) {
        System.out.println("Error in IfElseTag: " + ioe);
      }
    }
    return(SKIP_BODY);
  }
}
