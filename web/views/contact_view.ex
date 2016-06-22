defmodule ContactManagerBackend.ContactView do
  use ContactManagerBackend.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, ContactManagerBackend.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, ContactManagerBackend.ContactView, "contact.json")}
  end

  def render("contact.json", %{contact: contact}) do
    %{
      "type": "contact",
      "id": contact.id,
      "attributes": %{
        "first-name": contact.first_name,
        "last-name": contact.last_name,
        "email": contact.email,
        "phone": contact.phone
      }
    }
  end
end
