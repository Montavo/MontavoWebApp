using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BinaryIntellect.DataAccess;
using System.Data;
/// <summary>
/// Summary description for UserFunctions
/// </summary>
public class UserFunctions
{
	public UserFunctions()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    public void Adduser(string fname,string lname, string email,int id)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddUserADP";
        dh.AddParameter("@firstName", fname);
        dh.AddParameter("@lastName", lname);
        dh.AddParameter("@Email", email);
        dh.AddParameter("@Id", id);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        
    }
    public void DeleteUser(int userId) 
    {
        DatabaseHelper dhel = new DatabaseHelper();
        string query = "SP_RemoveUser";
        dhel.AddParameter("@userId", userId);
        dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public void updateUser(int userId, string fname, string lname, string email)
    {
        DatabaseHelper dh1 = new DatabaseHelper();
        string query = "Sp_EditUser";
        dh1.AddParameter("@userID", userId);
        dh1.AddParameter("@fname", fname);
        dh1.AddParameter("@lname", lname);
        dh1.AddParameter("@email", email);
        dh1.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public DataSet LoadUsers(int adderId) 
    {
        DatabaseHelper dhel = new DatabaseHelper();
        string query = "SP_GetUsersByID";
        dhel.AddParameter("@ID", adderId);
        DataSet ds = dhel.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
        
    }

    public DataSet GetUserINFOByID(int userID) {

        DatabaseHelper dh1 = new DatabaseHelper();
        string query = "SP_GetUserByUserID";
        dh1.AddParameter("@userID", userID);
        DataSet ds = dh1.ExecuteDataSet(query,CommandType.StoredProcedure);
        return ds;
    }
    public void AddPaymentMethod(string fname, string lname, string email, string notes, int admin)
    {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddPaymentMethod";
        dh.AddParameter("@firstname", fname);
        dh.AddParameter("@lastname", lname);
        dh.AddParameter("@email",email);
        dh.AddParameter("@notes", notes);
        dh.AddParameter("@adminid", admin);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

    }

    public void EditPaymentMethod(int payid,string fname,string lname,string email,string notes)
    {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_EditPaymentMethod";
        dh.AddParameter("@payId", payid);
        dh.AddParameter("@fname", fname);
        dh.AddParameter("@lname", lname);
        dh.AddParameter("@email", email);
        dh.AddParameter("@notes", notes);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

    }

    public void RemovePaymentMethod(int payId) 
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_RemovePaymentMethod";
        dh.AddParameter("@payId", payId);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public DataSet getPaymentmethodByID(int pid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetPaymentMethodBYID";
        dh.AddParameter("@ID", pid);
        DataSet ds = dh.ExecuteDataSet(query,CommandType.StoredProcedure);
        return ds;

    }
    public DataSet getEditablePaymentmethodById(int pid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetEditPaymentMethodByID";
        dh.AddParameter("@payId", pid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    
    }

    public void AddEditApplication(int appid,string appname,string appstoreurl,string playstoreurl,string marketurl,string notes) 
    {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_EditDeveloperApp";
        dh.AddParameter("@AppId", appid);
        dh.AddParameter("@AppName", appname);
        dh.AddParameter("@AppStoreUrl", appstoreurl);
        dh.AddParameter("@playStoreUrl", playstoreurl);
        dh.AddParameter("@marketurl", marketurl);
        dh.AddParameter("@notes", notes);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }

    public void AddApplication(string appname, string appstoreurl, string playstoreurl, string marketurl,string catfilters, string notes,int devid)
    {

        string query = "SP_ADDMobileApp";
        DatabaseHelper dh = new DatabaseHelper();
        dh.AddParameter("@AppName", appname);
        dh.AddParameter("@AppStoreURL", appstoreurl);
        dh.AddParameter("@PlayStoreURL", playstoreurl);
        dh.AddParameter("@MarketURL", marketurl);
        dh.AddParameter("@Catfilters", 1);
        dh.AddParameter("@Notes", notes);
        dh.AddParameter("@devId", devid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    
    }

    public void RemoveApplication(int appid) 
    {

        DatabaseHelper dhel = new DatabaseHelper();
        string query = "SP_RemoveApplication";
        dhel.AddParameter("@Appid", appid);
        dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }

    public DataSet GetApplicationInfoByID(int appid)
    {

        DatabaseHelper dh1 = new DatabaseHelper();
        string query = "SP_GetApplicationByAppId";
        dh1.AddParameter("@Appid", appid);
        DataSet ds = dh1.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;

    }
    public DataSet getDeveloperApps(int did) {

        DatabaseHelper dh1 = new DatabaseHelper();
        string query = "SP_GETDeveloperApps";
        dh1.AddParameter("@DeveloperId", did);
        DataSet ds = dh1.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    
    
    }

    public void RemoveWebsite(int webiD) {

        DatabaseHelper dhel = new DatabaseHelper();
        string query = "SP_RemoveWebsite";
        dhel.AddParameter("@webId", webiD);
        dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public DataSet getPublisherWebsitesByID(int id) {

        DatabaseHelper dhel = new DatabaseHelper();
        string query = "SP_GetPublisherWebsites";
        dhel.AddParameter("@pubid", id);
        DataSet ds= dhel.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    
    }

    public void RegisterDeveloper(string Appname,string appurl,string playstoreurl,string market,
        string notes,string fname,string lname,string email,string compname,string compaddress,string city,string state,int zip, string paynotes)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "Sp_DeveloperRegister";
        dh.AddParameter("@Appname", Appname);
        dh.AddParameter("@appstoreurl", appurl);
        dh.AddParameter("@playstoreurl",playstoreurl);
        dh.AddParameter("@marketurl", market);
        dh.AddParameter("@AppNotes", notes);
        dh.AddParameter("@fname", fname);
        dh.AddParameter("@lname", lname);
        dh.AddParameter("@email", email);
        dh.AddParameter("@compname", compname);
        dh.AddParameter("@comaddress", compaddress);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@zip", zip);
        dh.AddParameter("@paynotes", paynotes);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }

    public void Registerpublisher(string fname,string lname,string email,string webname,string url,string webnotes,
       string comname,string compadd,string city,string state,int zip,string paynotes) 
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_PublisherRegister ";
        dh.AddParameter("@fname", fname);
        dh.AddParameter("@lname", lname);
        dh.AddParameter("@email", email);
        dh.AddParameter("@WebsiteName", webname);
        dh.AddParameter("@webUrl", url);
        dh.AddParameter("@Webnotes", webnotes);
        dh.AddParameter("@comname", comname);
        dh.AddParameter("@compaddress", compadd);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@zip", zip);
        dh.AddParameter("@paynotes", paynotes);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }

    public DataSet GetWebSiteINFOByID(int webid)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetWebsiteBYID";
        dh.AddParameter("@WebID", webid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    }
    public void EditWebsiteInfo(int webid,string webname, string url,string notes) {

        DatabaseHelper dh1 = new DatabaseHelper();
        string query = "SP_PubEditWebsite";
        dh1.AddParameter("@WebID", webid);
        dh1.AddParameter("@webname", webname);
        dh1.AddParameter("@webUrl", url);
        dh1.AddParameter("@notes", notes);
        dh1.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }

    public void addAdvertiserPayment(string fname, string lname,string compname,string street,string suite
        ,string city,string state,int zip,string phone,int ccno,int ccv, int stipend) 
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddAdvertiserPayment";
        dh.AddParameter("@Fname",fname );
        dh.AddParameter("@Lname", lname);
        dh.AddParameter("@CompName",compname);
        dh.AddParameter("@Street", street);
        dh.AddParameter("@suite", suite);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@Zip",zip);
        dh.AddParameter("@phone", phone);
        dh.AddParameter("@CCno", ccno);
        dh.AddParameter("@CCType", "visa");
        dh.AddParameter("@CCV", ccv);
        dh.AddParameter("@Stipend",stipend);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        //dh.AddParameter();
    }

    public void RegisterAdvertiser(string website,string street,string suite,int ccno,int ccv,
        int stipend,string fname,string lname,string email,string comname,string comaddress,string city,string state,
        string phone,int zip) 
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AdvertiserSignup";
        dh.AddParameter("@web", website);
        dh.AddParameter("@street", street);
        dh.AddParameter("@suite", suite);
        dh.AddParameter("@CCNo", ccno);
        dh.AddParameter("@CCtype", "Visa");
        dh.AddParameter("@CCv",ccv);
        dh.AddParameter("@stipend",stipend);
        dh.AddParameter("@fname",fname);
        dh.AddParameter("@lname",lname);
        dh.AddParameter("@email", email);
        dh.AddParameter("@comname", comname);
        dh.AddParameter("@compaddress", comaddress);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@phone", phone);
        dh.AddParameter("@zip", zip);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

    }
    public void advertAddCampaign(string name,int ccdays,int cchours,int ccmins,
        int vcdays,int vchours,int vcmins) 
    {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddCampaign";
        dh.AddParameter("@name", name);
        dh.AddParameter("@start", DateTime.Today);
        dh.AddParameter("@end", DateTime.Today.AddDays(10));
        dh.AddParameter("@ccdays", ccdays);
        dh.AddParameter("@cchours", cchours);
        dh.AddParameter("@ccmins", ccmins);
        dh.AddParameter("@vcdays", vcdays);
        dh.AddParameter("@vchours", vchours);
        dh.AddParameter("@vcmins", vcmins);
        dh.AddParameter("@advertID", 14);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

    }
    public DataSet getAdvertplacements(int aid)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "Sp_GetAdvertPlacements ";
        dh.AddParameter("@aid", aid);
        DataSet ds = dh.ExecuteDataSet(query,CommandType.StoredProcedure);
        return ds;
    }
    public DataSet getPlacementById(int pid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetPlacementByID ";
        dh.AddParameter("@pid", pid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    
    }
    public void Removeplacement(int placeId) {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_RemovePlacement ";
        dh.AddParameter("@placementId", placeId);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }
    public void addAdvertPlacement(string placename,int rate,int tgoal,int goalperday,int advertId) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddPlacement ";
        dh.AddParameter("@PlaceName", placename);
        dh.AddParameter("@PricingRate", rate);
        dh.AddParameter("@totlgoal", tgoal);
        dh.AddParameter("@perday", goalperday);
        dh.AddParameter("@frequecy", true);
        dh.AddParameter("@AdvertID", advertId);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);    
    
    }
    
    public void Editplacement(string placename,int rate,int tgoal,int goalperday,bool freq,int pid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_EditPlacement ";
        dh.AddParameter("@pname", placename);
        dh.AddParameter("@prate", rate);
        dh.AddParameter("@total", tgoal);
        dh.AddParameter("@days", goalperday);
        dh.AddParameter("@frequency", freq);
        dh.AddParameter("@pid", pid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }
    public void Addbusiness(string bsiness,string address,string city,int zip,string phone,string weburl,int did) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddBusiness";
        dh.AddParameter("@BusinessName", bsiness);
        dh.AddParameter("@address",address);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", "Punjab");
        dh.AddParameter("@zipcode", zip);
        dh.AddParameter("@phone", phone);
        dh.AddParameter("@website", weburl);
        dh.AddParameter("@DeveloperId", did);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }

    public DataSet LoadAdvertpaymentMethods(int adID) {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetAdvertPaymentMethods";
        dh.AddParameter("@advertId",adID);
        DataSet ds = dh.ExecuteDataSet(query,CommandType.StoredProcedure);
        return ds;
    }
    public DataSet getAdvertpaymentByID(int payid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetAdvertPaymentByid";
        dh.AddParameter("@payID", payid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    }
    public void EditAdvertPaymentMethod(int pid,string fname,string lname,string comp,
        string street,string suite,string city,string state,int zip, string phone,
        int cc,int ccv,int stipend) {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "Sp_EditAdvertpaymentmethod";
        dh.AddParameter("@pid", pid);
        dh.AddParameter("@fname",fname );
        dh.AddParameter("@lname", lname);
        dh.AddParameter("@compname", comp);
        dh.AddParameter("@street", street);
        dh.AddParameter("@suite", suite);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@zip", zip);
        dh.AddParameter("@phone", phone);
        dh.AddParameter("@cc", cc);
        dh.AddParameter("@ccv", ccv);
        dh.AddParameter("@stipend", stipend);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
    }
    public void RemoveAdvertpayment(int payid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_RemoveAdvertpaymentMethod";
        dh.AddParameter("@payId", payid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }

    public DataSet getBusinessById(int bid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetBusinessByID";
        dh.AddParameter("@BusinessId", bid);
        DataSet ds=dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    }

    public DataSet getAdvertBusiness(int aid)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_GetAdvertBusiness";
        dh.AddParameter("@advertId", aid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    }
    public void EditAdvertBusiness(int bid, string bname, string address, string city,
        int zip, string phone, string website)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_EditAdvertBusiness";
        dh.AddParameter("@name", bname);
        dh.AddParameter("@address", address);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", "Punjab");
        dh.AddParameter("@zip", zip);
        dh.AddParameter("@phone", phone);
        dh.AddParameter("@weburl", website);
        dh.AddParameter("@bid", bid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public void removeAdvertBusiness(int bid) {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_RemoveBusiness";
        dh.AddParameter("@bid", bid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    
    }

    public DataSet validateuserlogin(string username, string password, int roleid) 
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AuthenticateUser ";
        dh.AddParameter("@name", username);
        dh.AddParameter("@passworld", password);
        dh.AddParameter("@roleid", roleid);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        return ds;
    }

    public void AddWebsite(string webname,string weburl,string notes,int pubid)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddPubWebsite";
        dh.AddParameter("@webnaem", webname);
        dh.AddParameter("@weburl", weburl);
        dh.AddParameter("@notes", notes);
        dh.AddParameter("@pubid", pubid);
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
    public void addCampaignPaymentinfo(int budget,string fname,string Lname,string email,string city,
        string state,int zip,string phone,long cardno,int ccv)
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddCampaignPayment";
        dh.AddParameter("@budget", budget);
        dh.AddParameter("@card", "Debit Card");
        dh.AddParameter("@cardtype", "Master");
        dh.AddParameter("@Fname", fname);
        dh.AddParameter("@Lname", Lname);
        dh.AddParameter("@Expmonth", "January");
        dh.AddParameter("@expyear", "2016");
        dh.AddParameter("@email",email);
        dh.AddParameter("@city", city);
        dh.AddParameter("@state", state);
        dh.AddParameter("@Zip", zip);
        dh.AddParameter("@phine", phone);
        dh.AddParameter("@cardno", cardno);
        dh.AddParameter("@ccv", ccv);
        dh.AddParameter("@country", "Pakistan");
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

    }

}

 