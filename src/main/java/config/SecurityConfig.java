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
            .usersByUsernameQuery(
                "SELECT email as username, password, true as enabled FROM user WHERE email = ?")
            .authoritiesByUsernameQuery(
                "SELECT email as username, authority FROM authorities WHERE email = ?")
            .and()
            .eraseCredentials(false);  // This allows us to see password issues
    }
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/systemAdmin/**").hasRole("ADMIN")
                .antMatchers("/school/**").hasRole("SCHOOL")
                .antMatchers("/admin/**").hasRole("TEAM")
                .antMatchers("/home/**").authenticated()
                .anyRequest()
                .permitAll()
                .and()
                .csrf(csrf -> csrf.disable())
                .formLogin()       
                    .successHandler((request, response, authentication) -> {
                        var roles = authentication.getAuthorities();
                        if (roles.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_ADMIN"))) {
                            response.sendRedirect("/tvpss/user");
                        } else if (roles.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_SCHOOL"))) {
                            response.sendRedirect("/tvpss/crew");
                        } else if (roles.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_TEAM"))) {
                            response.sendRedirect("/tvpss/dashboard");
                        } else {
                            response.sendRedirect("/home");
                        }
                    })
                    .permitAll()
                .and()
                .logout()
                    .logoutUrl("/logout")
                    //.logoutSuccessUrl("/login?logout=true")
                    .permitAll();
    }
    

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
