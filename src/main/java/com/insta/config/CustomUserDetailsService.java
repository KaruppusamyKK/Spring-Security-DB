package com.insta.config;

import com.insta.Entity.UserNameAndPassword;
import com.insta.Repo.UserNameAndPasswordRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private UserNameAndPasswordRepo userNameAndPasswordRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("Loading user by username: " + username);
        UserNameAndPassword userNameAndPassword = userNameAndPasswordRepo.findByUsername(username);
        if (userNameAndPassword==null){
            throw new UsernameNotFoundException("no user");
        }
        return new CustomUserDetails(userNameAndPassword);
    }
}
