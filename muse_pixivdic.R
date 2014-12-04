library(rvest)
library(dplyr)

Honoka <- html("http://dic.pixiv.net/a/高坂穂乃果") %>% html_nodes("span.ui-tooltip") %>% html_text()
Kotori <- html("http://dic.pixiv.net/a/南ことり") %>% html_nodes("span.ui-tooltip") %>% html_text()
Umi <- html("http://dic.pixiv.net/a/園田海未") %>% html_nodes("span.ui-tooltip") %>%  html_text()
Maki <- html("http://dic.pixiv.net/a/西木野真姫") %>% html_nodes("span.ui-tooltip") %>%  html_text()
Rin <- html("http://dic.pixiv.net/a/星空凛") %>% html_nodes("span.ui-tooltip") %>% html_text()
Hanayo <- html("http://dic.pixiv.net/a/小泉花陽") %>% html_nodes("span.ui-tooltip") %>% html_text()
Nico <- html("http://dic.pixiv.net/a/矢澤にこ") %>% html_nodes("span.ui-tooltip") %>% html_text()
Nozomi <- html("http://dic.pixiv.net/a/東條希") %>% html_nodes("span.ui-tooltip") %>% html_text()
Eri <- html("http://dic.pixiv.net/a/絢瀬絵里") %>% html_nodes("span.ui-tooltip") %>% html_text()

ch <- c("Honoka", "Kotori", "Umi", "Maki", "Rin", "Hanayo", "Nico", "Nozomi", "Eri")
vi <- c(Honoka, Kotori, Umi, Maki, Rin, Hanayo, Nico, Nozomi, Eri)

Muse <- data.frame(Chara=ch, View=vi)
arrange(Muse, desc(View))