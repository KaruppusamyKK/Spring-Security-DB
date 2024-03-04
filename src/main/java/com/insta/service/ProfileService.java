package com.insta.service;

import com.insta.Entity.Profile;
import com.insta.Repo.ProfileRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfileService {

    @Autowired
    private ProfileRepo profileRepo;

    public List<Profile> getProfile(){
        return profileRepo.findAll();

    }
}
