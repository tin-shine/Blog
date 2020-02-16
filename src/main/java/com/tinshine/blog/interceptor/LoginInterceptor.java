package com.tinshine.blog.interceptor;

import com.tinshine.blog.entity.UserEntity;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    private Logger logger = Logger.getLogger(this.getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        if (url.contains("main.action")) {
            HttpSession httpSession = request.getSession();
            UserEntity userFound = (UserEntity) httpSession.getAttribute("userFound");
            if (userFound != null) {
                return true;
            } else {
                request.getRequestDispatcher("/WEB-INF/pages/admin/login.jsp").forward(request, response);
                return false;
            }
        }
        if (url.contains("editBlog.action")) {
            if (request.getSession().getAttribute("userFound") != null) {
                return true;
            } else {
                request.getRequestDispatcher("/WEB-INF/pages/admin/login.jsp").forward(request, response);
                return false;
            }
        }
        logger.debug("url: [" + url + "] 放行");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
