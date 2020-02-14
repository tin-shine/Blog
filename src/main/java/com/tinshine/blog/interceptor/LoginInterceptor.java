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
        logger.debug("获取到url：" + url);
        if (url.contains("main.action")) {
            logger.debug("url中包含main.action");
            HttpSession httpSession = request.getSession();
            UserEntity userFound = (UserEntity) httpSession.getAttribute("userFound");
            if (userFound != null) {
                logger.debug("url: [" + url + "] 放行");
                return true;
            } else {
                logger.debug("userFound == null");
                request.getRequestDispatcher("/WEB-INF/pages/admin/login.jsp").forward(request, response);
                logger.debug("url: [" + url + "] 拦截");
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
