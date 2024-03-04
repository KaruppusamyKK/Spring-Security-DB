package com.insta.Repo;

import com.insta.Entity.Profile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.cdi.JpaRepositoryExtension;

public interface ProfileRepo extends JpaRepository<Profile,Long> {
}
