package com.insta.Repo;

import com.insta.Entity.UserNameAndPassword;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserNameAndPasswordRepo extends JpaRepository<UserNameAndPassword,Long> {
    UserNameAndPassword findByUsername(String username);
}
