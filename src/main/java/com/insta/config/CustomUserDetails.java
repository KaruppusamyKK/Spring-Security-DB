package com.insta.config;

import com.insta.Entity.UserNameAndPassword;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.security.PrivateKey;
import java.util.Collection;
import java.util.Collections;

public class CustomUserDetails implements UserDetails {

    private UserNameAndPassword userNameAndPassword;

    public CustomUserDetails(UserNameAndPassword userNameAndPassword) {
        this.userNameAndPassword = userNameAndPassword;
    }


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.emptyList();
    }



    @Override
    public String getPassword() {
        return userNameAndPassword.getPassword();
    }

    @Override
    public String getUsername() {
        return userNameAndPassword.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
