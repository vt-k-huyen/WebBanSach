package bo;

import java.util.ArrayList;

import bean.lichsumuabean;
import dao.lichsumuadao;

public class lichsumuabo {
	lichsumuadao lsmdao = new lichsumuadao();
	public ArrayList<lichsumuabean> getLSM(long makh) throws Exception{
		return lsmdao.getLSM(makh);
	}
}
