//Use this in Active choice reactive parameters


myList=[]
Process pr = Runtime.getRuntime().exec("sh MY_ALL_PODs.sh deploy mynamespace");
BufferedReader bfr = new BufferedReader(new InputStreamReader(pr.getInputStream()));
String line = "";
while((line = bfr.readLine()) != null) {
    myList.add(line);
}
print myList
return myList
