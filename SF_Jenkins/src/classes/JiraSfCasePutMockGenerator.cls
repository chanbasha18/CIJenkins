@isTest  
global with sharing class JiraSfCasePutMockGenerator implements HttpCalloutMock {
	
     	// Implement this interface method 
         global HTTPResponse respond(HTTPRequest req) {
         	         	   
              system.debug('http endpoint url :: '+req.getEndpoint());
              // Optionally, only send a mock response for a specific endpoint and method.                
            //  System.assertEquals('https://sfjiranew1.atlassian.net/rest/api/2/issue', req.getEndpoint());
              System.assertEquals('PUT', req.getMethod());      
              
              // Create a fake response
              HttpResponse res = new HttpResponse();              
              res.setHeader('Content-Type', 'application/json');              
              res.setBody('{ \"fields\":{\"project\":{\"key\":\"SFCAS-7\"},\"summary\": \"testing issue for today 5/3 updating from SF\" ,\"description\": \" Testing cases from SF to Jira on 5/1\", \"issuetype\":{\"name\":\"SFType\"}}}'); 
             
              res.setStatusCode(200);
              return res;
         }    
}