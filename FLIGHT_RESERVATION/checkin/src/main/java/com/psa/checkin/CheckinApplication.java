package com.psa.checkin;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CheckinApplication {

	public static void main(String[] args) {
        SpringApplication app = new SpringApplication(CheckinApplication.class);
        app.setDefaultProperties(Collections.singletonMap("server.port", "9001"));
        app.run(args);
    }

}


