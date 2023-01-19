waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["Minefactory.eu","Minefactory.eu"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/

    player createDiaryRecord ["Minefactory.eu",
        [
            "Minefactory.eu",
                "
			Minefactory.eu
                "
        ]
    ];