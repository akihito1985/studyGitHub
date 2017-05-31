/**
 *
 */
package org.seasar.sastruts.example.action;

import javax.annotation.Resource;

import org.seasar.sastruts.example.form.JspStudyForm;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

/**
 * @author apollo
 *
 */
public class SubAction {
	// アクションフォーム
	@Resource
	@ActionForm
	protected JspStudyForm jspStudyForm;

	/** 初期画面 */
	@Execute
	public String index(){
		return "study2.jsp";
	}
}
