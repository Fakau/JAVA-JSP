import com.inutech.dao.*;
import com.inutech.model.*;


public class Test {

	public Test() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		//EtudiantDao metier=new EtudiantDao();
		UtilisateurDao metier=new UtilisateurDao();
		//TypeAnneeAcademiqueDao metier=new TypeAnneeAcademiqueDao();
		//VacationDao metier=new VacationDao();
		//AnneeAcademiqueDao metierA=new AnneeAcademiqueDao();
		//metier.addOption(new Option("Informatique","imfo-001"));
		//metier.updateOption(new Option(3,"Administration","dip-003"));
        //metier.removeOption(2);
			/*Option o=metier.findOption(3);
			System.out.println(o.getId()+", "+o.getDescription()+", "+o.getCode_option());
		
			List<Option> p=metier.allOption();
			for(Option oo: p){
				System.out.println(oo.getId()+", "+oo.getDescription()+", "+oo.getCode_option());
	        }*/
		
			//metierA.addAnneeAcademique(new AnneeAcademique("2014-2015","an-019"));	
			//metierA.updateAnneeAcademique(new AnneeAcademique(2,"2013-2014","an-009"));
			//metierA.removeAnneeAcademique(3);
			/*AnneeAcademique kj=metierA.findAnneeAcademique(2);
			System.out.println(kj.getId()+", "+kj.getDescription()+", "+kj.getCodeAnneeAcademique());*/
            /*List<AnneeAcademique> aa=metierA.allAnneeAcademique();
           for(AnneeAcademique oo: aa){
				System.out.println(oo.getId()+", "+oo.getDescription()+", "+oo.getCodeAnneeAcademique());
	        }*/
		  /* List<Etudiant> oo=metier.allEdutiant();
			for(Etudiant ooo: oo){
				System.out.println(ooo.getAnneeAcademiqueCours()+" "+ooo.getAnneeAcademiqueDebut()+" "+ooo.getCode()+" "+ooo.getNom()+" "+ooo.getPrenom()+" "+ooo.getNiveau().getDescription()+" "+ooo.getOption().getDescription()+" "+ooo.getTypeAcademique().getDescription()+" "+ooo.getVacation().getDescription());
	        }*/
		Utilisateur ooo=metier.findUtilisateur(3);
		System.out.println(ooo.getNom()+" "+ooo.getPrenom()+" "+ooo.getPassword()+" "+ooo.getNom()+" "+ooo.getPrenom()+" "+ooo.getPassword());

	}

}
