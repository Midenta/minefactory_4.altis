/*
    Author : Yasar-S
    details : Sucht den Teil eines String's ob er vorhanden ist
    disclaimer : Das benutzen dieses Scriptest ohne benennung des echten Autores ist nicht gestattet
*/
params [
    ["_search","",[""]],
    ["_word","",[""]]
];
(((toLower _word)) find (toLower _search)) != -1