using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public Book()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private int isbnNumber;
    private string bookName;
    private string authorName;

    public int ISBNNumber
    {
        get { return isbnNumber; }
        set { isbnNumber = value; }
    }
        
    public string BookName
    {
        get { return bookName; }
        set { bookName = value; }
    }
    public string AuthorName
    {
        get { return authorName; }
        set { authorName = value; }
    }
}