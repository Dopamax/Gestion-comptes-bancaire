using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    interface ICompte
    {
        Client AddClient(Client cl);
        Compte AddCompte(Compte c,Client cl);
        Client FindClient(int isd);
        Compte FindCompte(int id);
        List<Compte> FindCompte4Client(int idclient);

        Opération AddOperation(Opération o);
        List<Opération> FindOperationBetween(DateTime debut, DateTime fin);



    }
}
