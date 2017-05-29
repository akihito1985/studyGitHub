/**
 *
 */
package org.seasar.sastruts.example.action;

import javax.annotation.Resource;

import org.seasar.sastruts.example.form.JspStudyForm;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

/**
 * JSP学習用
 * @author apollo
 *
 */
public class JspStudyAction {
	/** アクションフォーム */
	@Resource
	@ActionForm
	protected JspStudyForm jspStudyForm;

	/** 初期画面 */
	@Execute(validator=false)
	public String index(){
		// メッセージ設定
		jspStudyForm.message = "JSP学習";

		// リスト項目設定
		jspStudyForm.searchResult2 = new String[3];
		jspStudyForm.searchResult2[0] = "りんご";
		jspStudyForm.searchResult2[1] = "みかん";
		jspStudyForm.searchResult2[2] = "ぶどう";
//
		return "index.jsp";
	}
}
