using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public class CompteDao : ICompte
    {
        public Client AddClient(Client cl)
        {
            using (DBFirstContainer db = new DBFirstContainer())
            {
                cl=db.ClientSet1.Add(cl);
                db.SaveChanges();
                return cl;
            }
        }

        public Compte AddCompte(Compte c,Client cl)
        {
            using (DBFirstContainer db = new DBFirstContainer())
            {
                c.Client = cl;
                c = db.CompteSet.Add(c);
                db.SaveChanges();
                return c;
            }
        }

        public Opération AddOperation(Opération o)
        {
            using (DBFirstContainer db = new DBFirstContainer())
            {
                o = db.OpérationSet.Add(o);
                db.SaveChanges();
                return o;
            }
        }

        public Client FindClient(int id)
        {
            Client cl = null;
            using (DBFirstContainer db = new DBFirstContainer())
            {
                cl = db.ClientSet1.Find(id);
                return cl;
            }
        }

        public Compte FindCompte(int id)
        {
            Compte c = null;
            using (DBFirstContainer db = new DBFirstContainer())
            {
                c = db.CompteSet.Find(id);
                return c;
            }
        }

        public List<Compte> FindCompte4Client(int idclient)
        {
            using (DBFirstContainer db = new DBFirstContainer())
            {
                Client cl = db.ClientSet1.Find(idclient);
                return db.CompteSet.Where(c=>c.Client.Id==cl.Id).ToList();               
            }
        }

        public List<Opération> FindOperationBetween(DateTime debut, DateTime fin)
        {
            using (DBFirstContainer db = new DBFirstContainer())
            {
                /*var query = from o in db.OpérationSet
                            where (Convert.ToDateTime(o.date)>=debut)
                            && (Convert.ToDateTime(o.date)<=fin)
                            select o;
                return query.ToList();*/
                return db.OpérationSet.Where(o=>DateTime.Compare(o.date,debut)>0 && DateTime.Compare(o.date, fin)< 0).ToList();
            }
        }

       
    }
}