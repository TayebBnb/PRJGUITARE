using LIB_LUTHIER_TEST;

namespace PRJ_GUIT_TEST
{
    internal class Program
    {
        static void Main(string[] args)
        {
            C_BASE oui = new C_BASE();

            var test = oui.Get_All_Bois();

            Console.WriteLine(test.Count);
        }
    }
}