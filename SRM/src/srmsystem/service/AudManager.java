package srmsystem.service;

import java.util.List;

import srmsystem.domain.Paper;
import srmsystem.domain.Project;
import srmsystem.domain.User;
import srmsystem.vo.PaperBean;
import srmsystem.vo.ProjectBean;
import srmsystem.vo.TeacherBean;

	//���Ա����
public interface AudManager {
	// ��¼ʧ��
	public static final int LOGIN_FAIL = 0;
	// �����Ա��ݵ�¼
	public static final int LOGIN_AUD = 1;
	// �Խ�ʦ��ݵ�¼
	public static final int LOGIN_TEA = 2;
	
	String findTID(String UID);
	String findAName(String UID);
	String findTName(String UID);
	/**
	 * ��֤��¼
	 * @param user 
	 * @return ��¼������ȷ��:0Ϊ��¼ʧ�ܣ�1Ϊ��¼���Ա 2Ϊ��¼��ʦ
	 */
	int validLogin(User user);	
	/**
	 * 
	 * @return ��ȡȫ��������Ϣ
	 */
	List<Paper> getAllPaper();	
	/**
	 * 
	 * @return ��ȡȫ����Ŀ��Ϣ
	 */
	List<Project> getAllProject();
	/** 
	 * ͨ�����ı�ŷ���������Ϣ
	 * paID:���ı��
	 */
	List<PaperBean> getPaperBypaID(int paID);	
	/** 
	 * ͨ����Ŀ��ŷ�����Ŀ��Ϣ
	 * prID:��Ŀ���
	 */
	List<ProjectBean> getProjectByprID(int prID);
	/** 
	 * ͨ����ʦ��ŷ��ؽ�ʦ��Ϣ
	 * TID:��ʦ���
	 */
	List<TeacherBean> getTeaScore(String TID);
	
	/**
	 * �������
	 * @param paID ����ID
	 * @param result
	 */
	void checkPaper(int paID,boolean result);
	/**
	 * �����Ŀ
	 * @param paID ��ĿID
	 * @param result
	 */
	void checkProject(int prID,boolean result);
	/**
	 * ���Ľ�ʦ����
	 */
	void changeScore();
	/**
	 * ���ݽ�ʦ��Ų�ѯ������Ϣ
	 * @param TID ��ʦ���
	 * @return ������Ϣ
	 */
	List<PaperBean> findPaperbytea(String TID);
	/**
	 * ���ݽ�ʦ��Ų�ѯ��Ŀ��Ϣ
	 * @param TID ��ʦ���
	 * @return ��Ŀ��Ϣ
	 */
	List<ProjectBean> findProjectbytea(String TID);
	/**
	 * ����������Ŀ��ѯ������Ϣ
	 * @param paName ������Ŀ
	 * @return ������Ϣ
	 */
	List<PaperBean> findPaper(String paName);
	/**
	 * ����������Ŀ��ѯ��Ŀ��Ϣ
	 * @param paName ��Ŀ��Ŀ
	 * @return ��Ŀ��Ϣ
	 */
	List<ProjectBean> findProject(String prName);
	/**
	 * ��������״̬��ѯ������Ϣ
	 * @param paStatus ����״̬
	 * @return ������Ϣ
	 */
	List<PaperBean> findbypaStatus(int paStatus);
	/**
	 * ��������״̬��ѯ��Ŀ��Ϣ
	 * @param paStatus ��Ŀ״̬
	 * @return ��Ŀ��Ϣ
	 */
	List<ProjectBean> findbyprStatus(int prStatus);
	/**
	 *���ܽ�ʦ����
	 */
	List<TeacherBean> sumTScore();

}
