using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContactManagementStudio.Models
{
    /// <summary>
    /// The contact model has First and Last name, email and street address 
    /// </summary>
    public class Contact : ModelBase
    {
        
        [Required]
        [DataType(DataType.Text)]
        [MaxLength(30)]
        [Display(Name = "First name")]
        public string FirstName { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [MaxLength(30)]
        [Display(Name = "Last name")]
        public string LastName { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        [MaxLength(70)]
        [Display(Name = "Email address")]
        public string Email { get; set; }

        [MaxLength(120)]
        [Display(Name = "Contact's street address")]
        public string Address { get; set; }

        /// <summary>
        /// The ICollection will support the one to many relationship
        /// </summary>
        [Display(Name = "Phone")]
        public ICollection<Phone> ContactPhones { get; set; }
    }
}
