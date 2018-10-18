package com.inutech.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Filtre1
 */
@WebFilter("/Filtre1")
public class Filtre1 implements Filter {
	public static final String ACCES_CONNEXION = "/Login.jsp";
	public static final String ATT_SESSION_USER ="sessionUtilisateur";
    /**
     * Default constructor. 
     */
    public Filtre1() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req= (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		String chemin = req.getRequestURI().substring(req.getContextPath().length());
				if (chemin.startsWith("/css") || chemin.startsWith("/js") || chemin.startsWith("/img") || chemin.startsWith("/Fonts") ) {
				chain.doFilter( request, response );
				return; 
		}
	   HttpSession ses = req.getSession();
		
		 if ( ses.getAttribute( ATT_SESSION_USER ) == null ) {
			request.getRequestDispatcher( ACCES_CONNEXION ).forward(
			req , res);
			} else {
			chain.doFilter( request, response );
			} 
		
		
	}
	//pages 275;

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	public boolean filter(Object arg0) {
		// TODO Auto-generated method stub
		return false;
	}

}
