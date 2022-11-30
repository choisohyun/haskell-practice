-- practice: https://lhbg-book.link/print.html#flexible-html-content-functions
main :: IO ()
main = putStrLn myhtml

-- 0번: 기본

-- wrapHtml :: String -> String
-- wrapHtml content = "<html><body>" <> content <> "</body></html>"
-- myhtml :: [Char]
-- myhtml = wrapHtml "Hello, world!"


-- 1번+2번: Separate the functionality of wrapHtml to two functions
-- Change myhtml to use these two functions.

html_ :: String -> String
html_ = wrapHtml "html"
body_ :: String -> String
body_ = wrapHtml "body"
-- myhtml :: [Char]
-- myhtml = html_ (body_ "hello my world :)")


-- 3번: Add another two similar functions for the tags <head> and <title> and name them head_ and title_.

title_ :: String -> String
title_ = wrapHtml "title"
head_ :: String -> String
head_ = wrapHtml "head"


-- 4번: Create a new function, makeHtml, which takes two strings as input:

makeHead :: String -> String
makeHead title = head_ (title_ title)
makeHtml :: String -> String -> String
makeHtml title body = html_ (makeHead title) <> (body_ body)
myhtml :: [Char]
myhtml = makeHtml "My page title" "My page content"


wrapTag :: String -> String -> String
wrapTag tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

-- myhtml :: *
-- myhtml = wrapTag "html" (wrapTag "body" "Hello, world!!!")
