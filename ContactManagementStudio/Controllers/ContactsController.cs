using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ContactManagementStudio.Data;
using ContactManagementStudio.Models;
using Microsoft.AspNetCore.Identity;
using ContactManagementStudio.Helpers;

namespace ContactManagementStudio.Controllers
{
    public class ContactsController : Controller
    {
        /// <summary>
        /// Will allow the application to know witch user is connected
        /// </summary>
        private readonly UserManager<IdentityUser> _UserManager;

        private readonly ApplicationDbContext _context;

        public ContactsController(ApplicationDbContext context, UserManager<IdentityUser> userManager)
        {
            _UserManager = userManager;
            _context = context;
        }

        // GET: Contacts
        /// <summary>
        /// By including (Where(c => c.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))))) each user will only see his contacts 
        /// </summary>
        /// <returns></returns>
        public async Task<IActionResult> Index()
        {
            return View(await _context.Contacts.Where(c => c.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User)))).Include(c => c.ContactPhones).ToListAsync());
        }

        /// <summary>
        /// Simple error view
        /// </summary>
        /// <returns></returns>
        public IActionResult ErrorView()
        {
            return View();
        }

        // GET: Contacts/Details/5
        public async Task<IActionResult> Details(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contact = await _context.Contacts
                .Include(c => c.ContactPhones)
                .FirstOrDefaultAsync(m => m.ID == id && m.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))));
            if (contact == null)
            {
                return NotFound();
            }

            return View(contact);
        }

        // GET: Contacts/Create
        public IActionResult Create()
        {

            return View();
        }

        // POST: Contacts/Create
        // To protect from over posting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,FirstName,LastName,Email,Address,ContactPhones")] Contact contact)
        {
            if (ModelState.IsValid)
            {
                //getting CreatedBy value from the User
                contact.CreatedBy = Guid.Parse(_UserManager.GetUserId(User));

                _context.Add(contact);
                await _context.SaveChangesAsync();

                await SaveContactPhone(HttpContext.Request.Form.ToDictionary(x => x.Key, x => x.Value.ToString()), contact);

                return RedirectToAction(nameof(Index));
            }
            return View(contact);
        }

        /// <summary>
        /// This method get the dictionary containing the values passed by the user and saves a new Phone 
        /// </summary>
        /// <param name="requestForm"></param>
        /// <param name="contact"></param>
        /// <returns></returns>
        private async Task SaveContactPhone(Dictionary<string, string> requestForm, Contact contact)
        {
            Phone contactPhone = new Phone()
            {
                //get the value 'where' key, contained by the dictionary
                Description = requestForm["Description"],
                PhoneNumber = requestForm["PhoneNumber"],
                CreatedBy = Guid.Parse(_UserManager.GetUserId(User)),
                ContactID = await GetContactID(contact.FirstName, contact.LastName, contact.Email)
            };
            _context.Add(contactPhone);
            await _context.SaveChangesAsync();
        }

        /// <summary>
        /// This returns the ID of the Contact that was just saved to be used as a foreign key for the Phones ContactID
        /// </summary>
        /// <param name="firstName"></param>
        /// <param name="lastName"></param>
        /// <param name="email"></param>
        /// <returns></returns>
        private async Task<long> GetContactID(string firstName, string lastName, string email)
        {
            return _context.Contacts.Where(c => c.FirstName.Equals(firstName) && c.LastName.Equals(lastName) && c.Email.Equals(email) && c.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User)))).LastOrDefault().ID;
        }

        // GET: Contacts/Edit/5
        public async Task<IActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contact = await _context.Contacts.FindAsync(id);
            if (contact == null)
            {
                return NotFound();
            }
            return View(contact);
        }

        // POST: Contacts/Edit/5
        // To protect from over posting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(long id, [Bind("ID,FirstName,LastName,Email,Address,ContactPhones")] Contact contact)
        {
            if (id != contact.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    //getting CreatedBy value from the database
                    contact.CreatedBy = EditHelper<Contact>.GetCreatedById(_context, id);

                    _context.Update(contact);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ContactExists(contact.ID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(contact);
        }

        // GET: Contacts/Delete/5
        /// <summary>
        /// By including (Where(c => c.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))))) each user will only see his contacts 
        /// </summary>
        /// <returns></returns>
        public async Task<IActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contact = await _context.Contacts
                .Include(c => c.ContactPhones)
                .FirstOrDefaultAsync(m => m.ID == id && m.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))));
            if (contact == null)
            {
                return NotFound();
            }

            return View(contact);
        }

        // POST: Contacts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(long id)
        {
            var contact = await _context.Contacts.FindAsync(id);
            _context.Contacts.Remove(contact);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ContactExists(long id)
        {
            return _context.Contacts.Any(e => e.ID == id);
        }
    }
}
