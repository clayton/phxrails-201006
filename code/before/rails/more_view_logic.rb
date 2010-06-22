case org_type.name
when 'A'
  if public_link == false
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      organization_newsletter_messages_url(organization, newsletter, :org_type => 'A')) if !html.include?('A')
  else
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      public_newsletter_messages_url(newsletter, :org_type => 'A', :section_type => 'message')) if !html.include?('A')
  end
when 'B'
  if public_link == false
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      organization_newsletter_messages_url(organization, newsletter, :org_type => 'B'))  if !html.include?('B')
  else
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      public_newsletter_messages_url(newsletter, :org_type => 'B', :section_type => 'message'))  if !html.include?('B')
  end
when 'C'
  if public_link == false
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      organization_newsletter_messages_url(organization, newsletter, :org_type => 'C'))      if !html.include?('C')
  else
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      public_newsletter_messages_url(newsletter, :org_type => 'C', :section_type => 'message'))  if !html.include?('C')
  end
when 'D'
  if public_link == false
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      organization_newsletter_messages_url(organization, newsletter, :org_type => 'D'))   if !html.include?('D')
  else
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      public_newsletter_messages_url(newsletter, :org_type => 'D', :section_type => 'message'))  if !html.include?('D')
  end
when 'E'
  if public_link == false
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      organization_newsletter_messages_url(organization, newsletter, :org_type => 'E'))       if !html.include?('E')
  else
    html << sidebar_link(newsletter.get_messages_title(Organization.find(org_id[org_type.name])),
      public_newsletter_messages_url(newsletter, :org_type => 'E', :section_type => 'message'))  if !html.include?('E')
  end
end