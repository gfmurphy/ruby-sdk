Constant Contact Ruby SDK
=========================

In order to use the Constant Contact SDK you have to follow these steps (Rails example):

1. Install the gem :

        gem install constantcontact

2. Configure Rails to load the gem :

        Rails::Initializer.run do |config|
            ...
            config.gem "constantcontact"
            ...
        end

3. Create a new action and add the following code:

        @oauth = ConstantContact::Auth::OAuth2.new('your api key', 'your secret key', 'your redirect url')

        @error = params[:error]
        @user = params[:username]
        @code = params[:code]

        if @code
            response = @oauth.get_access_token(@code)
            if response.present?
                token = response['access_token']
                cc = ConstantContact::Api.new('your api key')
                @contacts = cc.get_contacts(token, 0, 10)
            end
        end


    Note: 'your redirect url' is the URL of the action you just created.

4. Create a view for the above mentioned action with the following code:

        <% if @error %>
            <p>
                <%=@error%>
            </p>
        <% end %>

        <% if @code %>
            <% if @contacts %>
                <% for contact in @contacts %>
                    <p>
                        Contact name: <%= contact.first_name + contact.last_name %>
                    </p>
                <% end %>
            <% end %>
        <% else %>
            <a href="<%=@oauth.get_authorization_url%>">Click to authorize</a>
        <% end %>

5. The first time you access the action in browser you should see the "Click to authorize" link.
Follow the link, go through all the Constant Contact steps required 
and then you will be redirected back to your action and you should see the list of contacts.