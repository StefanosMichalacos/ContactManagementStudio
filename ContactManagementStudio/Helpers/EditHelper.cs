using ContactManagementStudio.Data;
using ContactManagementStudio.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContactManagementStudio.Helpers
{
    /// <summary>
    /// Helper class to retrieve the CreatedBy value systemically.
    /// This will secure the value from vulnerability issues. 
    /// </summary>
    /// <typeparam name="T"> </typeparam>
    public class EditHelper<T> where T : ModelBase
    {
        public static Guid GetCreatedById(ApplicationDbContext _context, long id)
        {
            return GetEntity(_context, id).CreatedBy;
        }

        /// <summary>
        /// (_context.Entry(entity).State = EntityState.Detached; ) 
        /// This line is used to stop the connection with the database 
        /// and allow the new model to be saved
        /// </summary>
        /// <param name="_context"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        private static T GetEntity(ApplicationDbContext _context, long id)
        {
            DbSet<T> _DbSet = _context.Set<T>();
            var entity = _DbSet.FindAsync(id).Result;
            _context.Entry(entity).State = EntityState.Detached;
            return entity;
        }
    }
}
