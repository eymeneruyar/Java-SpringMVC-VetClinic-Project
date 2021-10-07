//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR - Süleyman Karaca
    Project Name: Vet Klinik
    Page: Web Security Config Process
    Version: v1.2
    GitHub: https://github.com/slymnkrc - https://github.com/eymeneruyar
    Date: 23.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Configs;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import vetcilinic.Services.UserService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    final UserService uService;
    public WebSecurityConfig(UserService uService) {
        this.uService = uService;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(uService).passwordEncoder(uService.encoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http
                .authorizeRequests()
                .antMatchers("/home/**").hasAnyRole("SECRETARY","DOCTOR","ADMIN")
                .antMatchers("/customer/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/customerSearch/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/treatment/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/calendar/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/sales/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/buying/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/laboratory/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/payActions/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/productDefinition/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/vaccineDefinition/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/suppliers/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/agenda/**").hasAnyRole("SECRETARY","DOCTOR","ADMIN")
                .antMatchers("/storage/**").hasAnyRole("SECRETARY","DOCTOR")
                .antMatchers("/account/**").hasAnyRole("SECRETARY","DOCTOR","ADMIN")
                .antMatchers("/firmInfo/**").hasAnyRole("SECRETARY","DOCTOR","ADMIN")
                .antMatchers("/settingsUsers/**").hasRole("ADMIN")
                .antMatchers("/register/**").permitAll()
                .antMatchers("/forgotPassword/**").permitAll()
                .antMatchers("/static/**").permitAll()
                .antMatchers("/templates/**").permitAll()
                .antMatchers("/app-assets/**").permitAll()
                .antMatchers("/errorPage/**").permitAll()
                .antMatchers("/login/**").permitAll()
                .antMatchers("/mainJs/**").permitAll()
                .antMatchers("/uploadImages/**").permitAll()
                .antMatchers("/error/**").permitAll()
                .antMatchers("/inc/**").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login")
                .defaultSuccessUrl("/home",true)
                .permitAll()
                .and()
                .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .deleteCookies("JSESSIONID")
                .invalidateHttpSession(true)
                .logoutSuccessUrl("/login")
                .permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/403");

        //Disable the post methods data actions
        http.csrf().disable();

        //Create Cookie with Spring Security
        http
                .rememberMe()
                .key("deneme")
                .rememberMeCookieName("remember-me")
                .tokenValiditySeconds(60*60)
                .alwaysRemember(true)
                .useSecureCookie(true);

        //Iframe showing options
        http.headers().frameOptions().disable();

    }


}
