package com.strata.tickets.ticketsapi.DAO;

import org.hibernate.annotations.Comment;
import org.springframework.stereotype.Component;

@Component
public class Message {

    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
