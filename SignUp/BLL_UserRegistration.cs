using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SignUp
{
    public class BLL_UserRegistration
    {
        public static string connectionstring()
        {
            string cstring = string.Empty;
            cstring = ConfigurationManager.ConnectionStrings["myConnectionstring"].ConnectionString;
            return cstring;
        }

        public string SaveUserDetails(string FirstName, string LastName, string MobileNumber, string Gender, string Address,string UserName, string Password)
        {
            string message = string.Empty;
            SqlConnection connection = null;
            SqlCommand command = null;

            using (connection = new SqlConnection(connectionstring()))
            {
                command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "USP_Insert_UserMasterData";
                command.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = FirstName;
                command.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = LastName;
                command.Parameters.Add("@MobileNumber", SqlDbType.NVarChar).Value = MobileNumber;
                command.Parameters.Add("@Gender", SqlDbType.NVarChar).Value = Gender;
                command.Parameters.Add("@Address", SqlDbType.NVarChar).Value = Address;
                command.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = UserName;
                command.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password;
                command.Parameters.Add("@message", SqlDbType.NVarChar,50).Direction = ParameterDirection.Output;

                connection.Open();
                command.ExecuteNonQuery();
                message = command.Parameters["@message"].Value.ToString();
                connection.Close();
            }
            return message;
        }
    }
}