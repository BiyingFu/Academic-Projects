public class UnchokeMsg extends ActualMessages {
/*
 * Unchoke messages have no payload	
 */
	
	int type=1;
	int defLength;
	int totalLen=5;
	
	public UnchokeMsg(){
		defLength=1;
	}
	public UnchokeMsg(byte[] b){
		defLength=1;
	}
	public byte[] intToByte(int peerId)
	{
		byte[] st2= new byte[4];
		st2[0] = (byte) ((peerId & 0xff000000) >> 24);
		st2[1] = (byte) ((peerId & 0xff0000) >> 16);
		st2[2] = (byte) ((peerId & 0xff00) >> 8);
		st2[3] = (byte) (peerId & 0xff);
		return st2;
	}
	
	public byte[] convert(){
		int offset = 0;		
		byte[] bytelength = intToByte(defLength);
		byte[] byteType=new byte[1];
		byteType[0]=MessageUtils.convertIntToByte(type);
		byte[] output=new byte[totalLen];
		System.arraycopy(bytelength, 0, output, offset, 4);
		offset+=4;
		System.arraycopy(byteType, 0, output, offset, 1);		
		return output;	
	}	
}