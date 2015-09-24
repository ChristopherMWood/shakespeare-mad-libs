
$(function() {
  loadMadLibLayout();
  loadPlayInfoLayout();
});

function loadMadLibLayout() {
  var xmlFilename = "./xml_resources/" + $("#madlib-xml-file-name").val();
  var xslFileName = "./xml_resources/madlib_layout.xsl";
  displayResult("tab1-madlib-container", xmlFilename, xslFileName);
}

function loadPlayInfoLayout() {
  var xmlFilename = "./xml_resources/" + $("#play-info-xml-file-name").val();
  var xslFileName = "./xml_resources/play_info.xsl";
  displayResult("tab2-madlib-container", xmlFilename, xslFileName);
}

function loadXMLDoc(filename)
{
  if (window.ActiveXObject)
  {
    xhttp = new ActiveXObject("Msxml2.XMLHTTP");
  }
  else 
  {
    xhttp = new XMLHttpRequest();
  }
    xhttp.open("GET", filename, false);
  try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
    xhttp.send("");
  return xhttp.responseXML;
}

function displayResult(id, xmlFilename, xslFileName)
{
  xml = loadXMLDoc(xmlFilename);
  xsl = loadXMLDoc(xslFileName);

  if (document.implementation && document.implementation.createDocument)
  {
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);
    document.getElementById(id).appendChild(resultDocument);
  }
}