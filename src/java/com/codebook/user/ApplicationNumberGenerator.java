
package com.codebook.user;

import java.util.Random;

public class ApplicationNumberGenerator {
    
    public static String generateApplicationNumber() {
        String prefix = "2023"; 
        int randomNumberLength = 10; 

        Random random = new Random();
        int randomNumber = random.nextInt((int) Math.pow(10, randomNumberLength));

        String formattedRandomNumber = String.format("%0" + randomNumberLength + "d", randomNumber);

        String applicationNumber = prefix + formattedRandomNumber;

        return applicationNumber;
    }
    public static String generateApplicationNumberforFee() {
        String prefix = "1012"; 
        int randomNumberLength = 8; 

        Random random = new Random();
        int randomNumber = random.nextInt((int) Math.pow(10, randomNumberLength));

        String formattedRandomNumber = String.format("%0" + randomNumberLength + "d", randomNumber);

        String applicationNumber = prefix + formattedRandomNumber;

        return applicationNumber;
    }
    
    public static String generateOtp() {
        String prefix = "23"; 
        int randomNumberLength = 6; 

        Random random = new Random();
        int randomNumber = random.nextInt((int) Math.pow(10, randomNumberLength));

        String formattedRandomNumber = String.format("%0" + randomNumberLength + "d", randomNumber);

        String applicationNumber = prefix + formattedRandomNumber;

        return applicationNumber;
    }
    
}
