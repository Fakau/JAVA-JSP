package com.inutech.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.FileItem;
/**
 * Servlet implementation class Upload
 */
@WebServlet(name = "Upload1", urlPatterns = { "/Upload1" })
public class Upload1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<FileItem> items = new ServletFileUpload(new
			DiskFileItemFactory()).parseRequest(request);
			for (FileItem item : items) {
			if (item.isFormField()) {
			/* Traiter les champs classiques ici (input
			type="text|radio|checkbox|etc", select, etc). */
			String nomChamp = item.getFieldName();
			String valeurChamp = item.getString();
			/* ... (traitement à faire) */
			} else {
			/* Traiter les champs de type fichier (input
			type="file"). */
			String nomChamp = item.getFieldName();
			//String monFichier=FilenameUtils.getName(item.getName());
			InputStream contenuFichier = item.getInputStream();
			/* ... (traitement à faire) */
			}
			}
			} catch (FileUploadException e) {
			throw new ServletException("Échec de l'analyse de la requête multipart.", e);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
