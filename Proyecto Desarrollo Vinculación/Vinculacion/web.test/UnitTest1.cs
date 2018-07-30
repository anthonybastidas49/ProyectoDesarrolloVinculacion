using System;
using ConexionDatos;
using ConexionDatos.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
namespace web.test
{
    [TestClass]
    public class UnitTest1
    {
    
        [TestMethod]
        public void TestMethod1()
        {
            Formato formato = new Formato();
            byte[] documento=formato.retorno(13);
            Assert.IsNotNull(documento);

        }
    }
}
