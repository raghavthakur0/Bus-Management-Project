package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class scheduleDao {
    
    public void check(String busno,String pickuppoint,String arrivaltime,String droppoint,String droptime){
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try{
            cf = new Configuration();
            cf.configure("schedule.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            schedule s = new schedule();
            s.setBusno(busno);
            s.setPickuppoint(pickuppoint);
            s.setArrivaltime(arrivaltime);
            s.setDroppoint(droppoint);
            s.setDroptime(droptime);
            session.save(s);
            tx.commit();
        } catch(Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            session.close();
            sf.close();
        }
    }   
}
