package weixin.guanjia.core.entity.message.customer;

public class TextMessage extends BaseMessage {
	private Text text;

	public void setText(Text text) {
		this.text = text;
	}

	public Text getText() {
		return this.text;
	}
}