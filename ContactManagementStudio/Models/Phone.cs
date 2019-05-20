using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContactManagementStudio.Models
{
    /// <summary>
    /// The phone model has number and Description
    /// </summary>
    public class Phone : ModelBase
    {
        [StringLength(10, ErrorMessage = "Phone number should be 9 characters long")]
        [MinLength(10)]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Phone Number must be numeric with no spaces")]
        public string PhoneNumber { get; set; }


        [DataType(DataType.Text)]
        [MaxLength(30)]
        public string Description { get; set; }

        /// <summary>
        /// Foreign key of Contact
        /// </summary>
        public long ContactID { get; set; }

        /// <summary>
        /// The Contact variable will support the one to many relationship 
        /// and assist in the view processes
        /// </summary>
        public Contact Contact { get; set; }
    }
}
