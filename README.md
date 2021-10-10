# Stack Exchange Comment Templates Context Menu

If you are tired of typing the same comments into Stack Exchange sites over and over, you can use this add-on to insert any of your frequently written comments with a couple clicks.

## Installation

Install a user script extension for your browser such as Tampermonkey or Greasemonkey and then install context-menu.js within it.

## Getting started

Trigger a context menu on the field where you write a comment by right-clicking, long-pressing, or command-clicking (depending on your operating system.) A menu will pop up with a list of comments that can be inserted. Click one of them to insert it, or use the "Edit" button to change the comment templates.

## Features

 - Right click on an empty comment field, or on the "Add a comment" link to bring up a context menu of comments that can be insterted.
 - Also works for edit notes, flags, and flag handling responses.
 - Does not show a context menu for comment boxes that have been filled in allowing you to use the standard context menu for features like spell check.
 - An import/export text file format
 - Load comments from a URL (Hosting comment templates on Github works great.)
 - Comment templates are stored is user script storage that persists across all Stack Exchange sites (no need to configure your comments per site.)
 - Set comment templates to be available only in specific contexts:
   - Only on specific types of comments (eg. comments on answers)
   - Only for moderators or for non-moderators
   - Only on specific sites (eg. stackoverflow.com)
   - Only for specific tags (eg. Java)

## Variables

The following variables are expanded by this code within comments:

 - `$SITENAME`: The name of the current Stack Exchange site, eg "Stack Overflow"
 - `$SITEURL`: The domain name of the current Stack Exchange site, eg `stackoverflow.com`. You usually don't need this variable, you can use links like `[editing help](/editing-help)` to link to URLs found on every StackExchange site.
 - `$MYUSERID`: Your user id
 - `$QUESTIONID`: The ID of the question at the top of the page
 - `$OPID`: The user ID of the person who asked the question
 - `$OPNAME`: The user name of the person who asked the question (without spaces for @references)
 - `$OPREP`: The reputation of the person who asked the question
 - `$POSTID`: The ID of the question or answer for which a comment is being written
 - `$AUTHORID`: The user ID of the author of the question or answer for which a comment is being written
 - `$AUTHORNAME`: The user name of the author of the question or answer for which a comment is being written
 - `$AUTHORREP`: The reputation of the author of the question or answer for which a comment is being written (without spaces for @references)

In addition, Stack Exchange expands links such as `[meta]`, `[edit]`, and `[help]`. See [the documentation](//stackoverflow.com/editing-help#comment-formatting) for the full list and explanations.

## SE-AutoReviewComments compatibility

I authored this project because SE-AutoReviewComments isn't currently maintained and is no longer fully functional. I wanted migration from it to be as painless as possible.

 - The import/export format is very similar. Comment templates exported from SE-AutoReviewComments can be directly imported
 - All SE-AutoReviewComments variables are supported

There are several features of SE-AutoReviewComments that are not implemented here:

 - Displaying extended information about the author
 - "See-through" mode
 - Filtering comments by keyword
 - JSONP import and export
 - Showing the full comment text by default
 - Adding a welcome message to comments for new users
 - No direct extentions for Firefox for Chrome
