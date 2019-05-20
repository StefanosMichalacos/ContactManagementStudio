using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContactManagementStudio.Models
{
    /// <summary>
    /// The base model for every entity of the project
    /// </summary>
    public abstract class ModelBase
    {
        /// <summary>
        /// primary key for the tables 
        /// </summary>
        [Key]
        public long ID { get; set; }
        /// <summary>
        /// will hold the id of the user who created it for security purpose 
        /// </summary>
        [Required]
        public Guid CreatedBy { get; set; }
    }
}
