import "package:http/http.dart" as http;
import "dart:convert";

class HerokuServer{
  //**************** Heroku Server Stuff ****************
  Future <String> predict(var body) async {
        //Sending input to the server
    var client = new http.Client();
    var url = "http://192.168.0.192:8000/predict";
    var uri = Uri.parse(url);
    Map <String, String> headers = {"Content-type" :"application/json"};
    String jsonString = json.encode(body);
    var response = await client.post(uri, headers: headers, body: jsonString);
        //Getting response from server
    if(response.statusCode==200){                    //Server connected & data sent -> 200 = OK
      print("SUCCESS!");
      var result = json.decode(response.body);       // Decoding the resultant
      print(result['prediction']);
      return result['prediction'];                   //Output
    }

    //else{                                            //Connection could not be made -> 400-599 = Error
      //return 'A Network Error has occurred.';        //Errors can be caught if needed
    //}
  }
}
