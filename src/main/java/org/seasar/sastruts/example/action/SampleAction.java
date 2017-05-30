/**
 *
 */
package org.seasar.sastruts.example.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.seasar.sastruts.example.dto.UserDto;
import org.seasar.sastruts.example.form.SampleForm;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

/**
 * @author apollo
 *
 */
public class SampleAction {
	/** アクションフォーム */
	@Resource
	@ActionForm
	protected SampleForm sampleForm;
////
//コミット①
//コミット②
	// 表示用のpublicプロパティ
	public String message;

	/** セッション情報 */
	@Resource
	protected UserDto userDto;

	/** HttpSession */
	@Resource
	protected HttpSession session;

	/** 入力画面の実行メソッド */
	@Execute(validator=false)
	public String index(){
		sampleForm.message = "Hello World!";
		sampleForm.rows[0].name = "佐藤さん";
		sampleForm.rows[0].mail = "sato@gmail.com";
		sampleForm.rows[1].name = "田中さん";
		sampleForm.rows[1].mail = "tanaka@gmail.com";
		sampleForm.rows[2].name = "安田さん";
		sampleForm.rows[2].mail = "yasuda@gmail.com";

		return "index.jsp";
	}

	/** 結果画面の実行メソッド */
	@Execute(validator=true, input="index.jsp")
	public String echo(){
		// form → HttpSession → form（HTTPセッション学習）
		userDto = (UserDto)session.getAttribute("userDto");
		userDto.userId = sampleForm.id;
		userDto.userName = sampleForm.name;
		sampleForm.id2 = userDto.userId;
		sampleForm.name2 = userDto.userName;

		return "echo.jsp";
	}
}
