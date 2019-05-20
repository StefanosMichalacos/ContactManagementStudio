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
    public class PhonesController : Controller
    {
        /// <summary>
        /// Will allow the application to know witch user is connected
        /// </summary>
        private readonly UserManager<IdentityUser> _UserManager;

        private readonly ApplicationDbContext _context;

        public PhonesController(ApplicationDbContext context, UserManager<IdentityUser> userManager)
        {
            _UserManager = userManager;
            _context = context;
        }

        // GET: ContactPhones/Create
        public IActionResult Create(long id)
        {
            // Finds the corresponding contact form the id passed and checks the user id 
            ViewData["Contacts"] = _context.Contacts.Where(c => c.ID == id && c.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User)))).ToList();
            if (!ViewData["Contacts"].Equals(null))
            {
                return View();
            }
            else
            {
                return RedirectToAction("ErrorView", "Contacts");
            }
        }

        // POST: ContactPhones/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PhoneId,PhoneNumber,Description,ContactID")] Phone contactPhone)
        {
            if (ModelState.IsValid)
            {
                //getting CreatedBy value from the User
                contactPhone.CreatedBy = Guid.Parse(_UserManager.GetUserId(User));

                _context.Add(contactPhone);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index", "Contacts");
            }
            return RedirectToAction("ErrorView", "Contacts");
        }

        // GET: ContactPhones/Edit/5
        public async Task<IActionResult> Edit(long? id, long ContactID)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contactPhone = await _context.ContactPhones.FindAsync(id);
            if (contactPhone == null)
            {
                return NotFound();
            }
            if (!contactPhone.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))))
            {
                RedirectToAction("ErrorView", "Contacts");
            }

            ViewData["Contacts"] = _context.Contacts.Where(c => c.ID == ContactID).ToList();
            return View(contactPhone);
        }

        // POST: ContactPhones/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(long id, [Bind("ID,PhoneNumber,Description,ContactID")] Phone contactPhone)
        {
            if (id != contactPhone.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    //getting CreatedBy value from the database
                    contactPhone.CreatedBy = EditHelper<Phone>.GetCreatedById(_context, id);

                    _context.Update(contactPhone);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ContactPhoneExists(contactPhone.ID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Index", "Contacts"); ;
            }
            return RedirectToAction("ErrorView", "Contacts");
        }

        // GET: ContactPhones/Delete/5
        public async Task<IActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contactPhone = await _context.ContactPhones
                .Include(c => c.Contact)
                .FirstOrDefaultAsync(m => m.ID == id && m.CreatedBy.Equals(Guid.Parse(_UserManager.GetUserId(User))));
            if (contactPhone == null)
            {
                return NotFound();
            }

            return View(contactPhone);
        }

        // POST: ContactPhones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(long id)
        {
            var contactPhone = await _context.ContactPhones.FindAsync(id);
            _context.ContactPhones.Remove(contactPhone);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index", "Contacts"); ;
        }

        private bool ContactPhoneExists(long id)
        {
            return _context.ContactPhones.Any(e => e.ID == id);
        }
    }
}
