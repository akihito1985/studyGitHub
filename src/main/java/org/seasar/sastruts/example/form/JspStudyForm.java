/**
 *
 */
package org.seasar.sastruts.example.form;

import java.io.Serializable;
import java.util.Date;

import org.seasar.framework.container.annotation.tiger.Component;
import org.seasar.framework.container.annotation.tiger.InstanceType;

@Component(instance=InstanceType.SESSION)

/**
 * JSP学習用（フォーム）
 * @author apollo
 *
 */
public class JspStudyForm implements Serializable{
	private static final long serialVersionUID = 1L;

	public String message;
	public String searchResult[];
	public String searchResult2[];
	public String name;
	public String password;
	public String checkBox;
	public String multiBox[];
	public String language;	//セレクトボックス
	public String searchKey;
	public Date date;
}
