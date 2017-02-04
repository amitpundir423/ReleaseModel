global without sharing class DragDropFileUploadController {
	public DragDropFileUploadController(ApexPages.StandardController sc)
	{
		//comment added on friday
		//comment added for FY18Q1BFR1
	}
	@RemoteAction
    global static String saveFile(String filename, String fileContent, String id) {
    	String err = null;
    	try
    	{
	    	Attachment att = new Attachment();
	    	att.ParentId = id;
	    	att.Body = EncodingUtil.base64Decode(fileContent);
	    	att.Name = filename;
	    	insert att;
    	}
    	catch(Exception e){err=e.getMessage();}
        return err;
    }
}
