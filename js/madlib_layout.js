
$(function() {
  //$("#tab1-madlib-container").load("macbeth_lib.xml");
  loadXMLDoc("macbeth_lib.xml");
  //alert(loadXMLDoc("../macbeth_lib.xml"));
  //displayResult('macbeth_lib.xml', 'macbeth_lib.xsl');
});

function loadXMLDoc(filename)
{
  var fileResponse;
  var request = $.ajax({
      url: filename,
      async: true
  });

  request.done(function(data){
      fileResponse = data;
  });

  return fileResponse;
}

function displayResult(xmlFilename, xslFilename)
{
var xml = loadXMLDoc(xmlFilename);
//var xsl = loadXMLDoc(xslFilename);
// code for IE
if (window.ActiveXObject || xhttp.responseType == "msxml-document")
  {
  ex = xml.transformNode(xsl);
  document.getElementById("tab1-madlib-container").innerHTML = ex;
  alert(ex);
  }
// code for Chrome, Firefox, Opera, etc.
else if (document.implementation && document.implementation.createDocument)
  {
  xsltProcessor = new XSLTProcessor();
  xsltProcessor.importStylesheet(xsl);
  resultDocument = xsltProcessor.transformToFragment(xml, document);
  document.getElementById("tab1-madlib-container").appendChild(resultDocument);
  alert(resultDocument);
  }
}