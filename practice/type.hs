main :: IO ()
main = putStrLn myhtml

el :: String -> String -> Structure
el tag content =
  Structure . "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> Structure
html_ = Structure . el "html"

body_ :: String -> Structure
body_ = Structure . el "body"

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

makeHtml :: String -> String
makeHtml body = html_ (body_ body)
myhtml :: [Char]
myhtml = html_ (body_ (h1_ "title") <> (p_ "hello world"))

-- newtype
newtype Html = Html String
newtype Structure = Structure String

Html :: String -> Html
getStructureString :: Structure -> String
getStructureString struct =
  case struct of
    Structure str -> str
getStructureString (Structure str) = str

id :: a -> a
id x = x

append_ :: Structure -> Structure -> Structure
append_ (Structure a) (Structure b) =
  Structure (a <> b)

render :: Html -> String
render html =
  case html of
    Html str -> str

