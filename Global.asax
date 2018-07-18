<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    { ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/Scripts/jquery-1.7.1js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",null,myScriptResDef);
        // Code that runs on application startup
         List<Book> books = new List<Book>();

        Application["books"] = books;

        books.Add(new Book {BookName="Wonder", ISBNNumber=0552565970, AuthorName = "R.J. Palacio"});
        books.Add(new Book {BookName="Bad Dad", ISBNNumber=0654126084, AuthorName = "David Walliams"});
        books.Add(new Book {BookName="Sapiens", ISBNNumber=0354160541, AuthorName = "Yuval Noah Harari"});
        books.Add(new Book {BookName="Origin", ISBNNumber=0149751304, AuthorName = "Dan Brown"});
        books.Add(new Book {BookName="The Sun and Her Flowers", ISBNNumber=0497604345, AuthorName = "Rupi Kaur"});
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
