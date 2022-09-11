concrete Eng of Food = open Prelude in {
    param
        Number = Sg | Pl;
        VerbForm
            = VPresent Number
            | VPresPart
            | VPast
            | VPastPart
            ;
    oper 
        regNoun
            : Str -> {s: Number => Str}
            = \dog -> {
                s = table {
                    Sg => dog;
                    Pl => dog + "s"
                }
            };
        regVerb
            : Str -> {s: VerbForm => Str}
            = \talk -> {
                s = table {
                    VPresent Sg => talk + "s";
                    VPresent Pl => talk;
                    VPresPart   => talk + "ing";
                    VPast       => talk + "ed";
                    VPastPart   => talk + "ed"
                }
            };
        copula
            : Number -> Str
            = \n -> case n of {
                Sg => "is";
                Pl => "are"
            };
        det
            : Number -> Str -> {s: Number => Str} -> {s: Str; n: Number}
            = \n, det, kind -> {
                s = det ++ kind.s ! n;
                n = n
            };
    
    lincat
        Quality = SS;
        Kind = {s: Number => Str};
        Item = {s: Str; n: Number};
    
    lin
        Is item quality = ss (
            item.s ++ copula item.n ++ quality.s
        );
        This = det Sg "this";
        That = det Sg "that";
        These = det Pl "these";
        Those = det Pl "those";
        QKind quality kind = {
            s = table {
                n => quality.s ++ kind.s ! n
            }
        };
        Wine = regNoun "wine";
        Cheese = regNoun "cheese";
        Fresh = ss "fresh";
        -- Drink = regVerb "drink";
        Very = prefixSS "very";
}