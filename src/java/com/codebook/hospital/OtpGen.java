package com.codebook.hospital;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
    
public class OtpGen {
    
    public static String sendSMS(String username, String apikey, String mobile, String senderid, String message) {
        String status="";
        try {   
            String url = "https://smslogin.co/v3/api.php";

            URL obj = new URL(url);
            HttpURLConnection connection = (HttpURLConnection) obj.openConnection();

            connection.setRequestMethod("POST");

            connection.setDoOutput(true);

            String postData = String.format("username=%s&apikey=%s&mobile=%s&message=%s&senderid=%s",
                    username, apikey, mobile, message, senderid);

            byte[] postDataBytes = postData.getBytes(StandardCharsets.UTF_8);

            connection.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));

            try (OutputStream os = connection.getOutputStream()) {
                os.write(postDataBytes);
            }

            int responseCode = connection.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_OK) {
                status="Success";
                System.out.println("SMS sent successfully.");
            } else {
                status="Failed";
                System.out.println("Failed to send SMS. Response code: " + responseCode);
            }
            
        } catch (Exception e) {
            status=e.getMessage();
        }
        return status;
    }

    
}


    