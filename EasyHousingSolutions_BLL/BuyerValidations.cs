using EasyHousingSolutions_DAL;
using EasyHousingSolutions_Entity;
using EasyHousingSolutions_Exception;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace EasyHousingSolutions_BLL
{
    public class BuyerValidations
    {

        BuyerOperations buyerObj = null;
        
        // insering into database...
        public void AddBuyer(Buyer buyer)
        {
            try
            {
                buyerObj = new BuyerOperations();
               
                buyerObj.InsertBuyer(buyer);
                
            }
            catch (Exception)
            {
                throw;
            }
        }

        // add to cart..
        public List<Property> AddToCart(int propID,int LoginID)
        {
            List<Property> propertyList = new List<Property>();

            try
            {
                buyerObj = new BuyerOperations();
                {
                    propertyList = buyerObj.AddToCart(propID, LoginID);
                }
            }
            catch (Exception)
            {
                throw;
            }

            return propertyList;
        }

        public List<Property> DeletefromCart(int propID, int LoginID)
        {
            List<Property> propertyList = new List<Property>();
            try
            {
                buyerObj = new BuyerOperations();
                {
                    propertyList = buyerObj.DeleteFromCart(propID, LoginID);
                }
            }
            catch (Exception)
            {
                throw;
            }

            return propertyList;
        }


        #region show properties by Region
        public List<Property> showProperties(string state, string city)
        {
            List<Property> propertyList = new List<Property>();
            try
            {

                buyerObj = new BuyerOperations();
                {
                    propertyList = buyerObj.ShowALLProperties(state, city);
                }
            }
            catch (Exception)
            {
                throw;
            }
            return propertyList;
        }


        #endregion

        #region show properties by Price
        public List<Property> GetPropertiesByPrice(int min, int max)
        {
            List<Property> propertyList = new List<Property>();
            try
            {

                buyerObj = new BuyerOperations();
                {
                    propertyList = buyerObj.GetPropertiesByPrice(min, max);
                }
            }
            catch (Exception)
            {
                throw;
            }
            return propertyList;
        }
        #endregion

        #region show cart ...
        public List<Property> showCart(int LoginID)
        {
            List<Property> propertyList = new List<Property>();
            try
            {
                buyerObj = new BuyerOperations();
                {
                    propertyList = buyerObj.ShowCart(LoginID);
                }
            }
            catch (Exception)
            {
                throw;
            }
            return propertyList;
        }
        #endregion

        public int BuyerId(string userName)
        {

            try
            {
                BuyerOperations e = new BuyerOperations();
                return e.BuyerId(userName);
            }
            catch (UserException)
            {
                throw;
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
        }
        //public void GetBuyerId(int buyerId)
        //{

        //    try
        //    {
        //        BuyerOperations e = new BuyerOperations();
        //        e.GetBuyerId(buyerId);
        //    }
        //    catch (UserException)
        //    {
        //        throw;
        //    }
        //    catch (System.Exception ex)
        //    {
        //        throw ex;
        //    }

        //}
    }
}