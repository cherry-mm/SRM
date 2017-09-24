package srmsystem.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;

import srmsystem.action.base.AudBaseAction;

public class CheckAction extends AudBaseAction{
	  private List papers;
	  private List projects;
	  private List teachers;
	  
	  
	 //papers set,get方法 
	  public List getPapers() {
			return papers;
		}

	  public void setPapers(List papers) {
			this.papers = papers;
		}
	  
	  
	  
	//projects set,get方法 
	  public List getProjects() {
			return projects;
		}

	  public void setProjects(List projects) {
			this.projects = projects;
		}
	  
	  
	  
	  
	//teachers set,get方法 
	  public List getTeachers() {
			return teachers;
		}

	  public void setTeachers(List teachers) {
			this.teachers = teachers;
		}
		
  
//	public String execute() throws Exception
//		{
//			// 创建ActionContext实例
//			ActionContext ctx = ActionContext.getContext();
//			
//			// 获取HttpSession中的user属性
//			String mgrName = (String)ctx.getSession()
//				.get(WebConstant.USER);
//			setEmps(mgr.getEmpsByMgr(mgrName));
//			return SUCCESS;
//		}

	
	
	
	
	
	
	
	
}
