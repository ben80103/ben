/** Template for nested tags.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2000 Marty Hall; may be freely used or adapted.
 */

public class OuterTag extends TagSupport {
  public void setSomeValue(SomeClass arg) { ... }
  public SomeClass getSomeValue() { ... } 
}

public class FirstInnerTag extends BodyTagSupport {
  public int doStartTag() throws JspTagException {
    OuterTag parent =
      (OuterTag)findAncestorWithClass(this, OuterTag.class);
    if (parent == null) {
      throw new JspTagException("nesting error");
    } else {
      parent.setSomeValue(...);
    }
    return(EVAL_BODY_TAG);
  }
  ...
}

public class SecondInnerTag extends BodyTagSupport {
  public int doStartTag() throws JspTagException {
    OuterTag parent =
      (OuterTag)findAncestorWithClass(this, OuterTag.class);
    if (parent == null) {
      throw new JspTagException("nesting error");
    } else {
      SomeClass value = parent.getSomeValue();
      doSomethingWith(value);
    }
    return(EVAL_BODY_TAG);
  }
  ...
}
