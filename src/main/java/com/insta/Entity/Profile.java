package com.insta.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Base64;

@Entity
@Data
public class Profile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String followers;
    private String following;
    private String bio;
    private String username;
    private String password;
    private String postCount;
    @Lob
    private byte[] profilePic;

    @Transient
    private String profilePicBase64;

    public String getProfilePicBase64() {
        return Base64.getEncoder().encodeToString(profilePic);
    }

}
