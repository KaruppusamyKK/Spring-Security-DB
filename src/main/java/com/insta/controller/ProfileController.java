package com.insta.controller;

import com.insta.Entity.Profile;
import com.insta.service.ProfileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.Base64;
import java.util.List;
@Slf4j
@Controller
public class ProfileController {

    @Autowired
    private ProfileService profileService;

    @GetMapping("/profile")
    public String getProfile(Model model) {
        List<Profile> getProfile = profileService.getProfile();
        getProfile.forEach(s -> s.setProfilePicBase64(Base64.getEncoder().encodeToString(s.getProfilePic())));
        model.addAttribute("getProfile",getProfile);
        return "index1";
    }
}
