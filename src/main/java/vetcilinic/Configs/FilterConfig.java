//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Filter Config Process
    Version: v1.4
    GitHub: https://github.com/eymeneruyar
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Configs;

import vetcilinic.Entities.AccountActivities;
import vetcilinic.Services.UserService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FilterConfig implements Filter {

    final UserService uService;
    public FilterConfig(UserService uService) {
        this.uService = uService;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        filterChain.doFilter(req,resp);

    }

}
