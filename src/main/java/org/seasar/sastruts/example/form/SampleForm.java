package org.seasar.sastruts.example.form;

import java.io.Serializable;

import org.seasar.framework.container.annotation.tiger.Component;
import org.seasar.framework.container.annotation.tiger.InstanceType;
import org.seasar.struts.annotation.IntegerType;
import org.seasar.struts.annotation.Maxlength;
import org.seasar.struts.annotation.Required;

@Component(instance=InstanceType.SESSION)
public class SampleForm implements Serializable{
	private static final long serialVersionUID = 1L;

	public String message;

	//HTTPセッション管理学習
	@Required
	@Maxlength(maxlength=5)
	@IntegerType
	public String id;

	@Required
	public String name;

	public String id2;
	public String name2;

	//配列マッピング学習
	public String[] products;

	//ネストDTO学習
	public Row[] rows = new Row[]{new Row(),new Row(),new Row()};
	public static class Row implements Serializable{
		private static final long serialVersionUID = 1L;

		public String name;
		public String mail;
	}
}
