package weixin.guanjia.core.entity.message.req;

public class VoiceMessage extends BaseMessage {
	private String MediaId;
	private String Format;

	public String getMediaId() {
		return this.MediaId;
	}

	public void setMediaId(String mediaId) {
		this.MediaId = mediaId;
	}

	public String getFormat() {
		return this.Format;
	}

	public void setFormat(String format) {
		this.Format = format;
	}
}