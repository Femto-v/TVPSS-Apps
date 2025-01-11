package config;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;




@Configuration
@EnableWebSecurity(debug = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	DataSource dataSource;


	@Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
            .dataSource(dataSource)
            .passwordEncoder(new BCryptPasswordEncoder())
            .usersByUsernameQuery("SELECT email, password FROM users WHERE email = ?")
            .authoritiesByUsernameQuery("SELECT email, authority FROM authorities WHERE email = ?");
    }

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	    http.authorizeRequests()
	            .antMatchers("/systemAdmin/**").hasRole("ADMIN") // Only ADMIN role can access /admin/**
	            .antMatchers("/admin/**").hasRole("TEAM")  // Only SALES role can access /sales/**
	            .antMatchers("/school/**").hasRole("SCHOOL")  // Only USER role can access /user/**
	            .antMatchers("/home/**").authenticated() // Requires login to access ie /home/dashboard
	            .anyRequest().permitAll()                 // Allow unrestricted access to other URLs
	            .and()
	            .formLogin()
                    .loginPage("/login")                         // Custom login page
                    .loginProcessingUrl("/perform_login")        // URL for login processing
                    .successHandler((request, response, authentication) -> {
                        authentication.getAuthorities().forEach(null);;
                        if (authentication.getAuthorities().stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_ADMIN"))) {
                            response.sendRedirect("/systemAdmin/user");
                        } else if (authentication.getAuthorities().stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_SCHOOL"))) {
                            response.sendRedirect("/school/crew");
                        } else if (authentication.getAuthorities().stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_TEAM"))) {
                            response.sendRedirect("/admin/dashboard");
                        } else {
                            response.sendRedirect("/home");
                        }
                    })
                .permitAll()
                .and()
            .logout()
            	.logoutUrl("/logout") // The actual logout endpoint
            	//.logoutSuccessUrl("/home/out") // Redirect to this page after successfully logged out
                .permitAll();
	}




    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
