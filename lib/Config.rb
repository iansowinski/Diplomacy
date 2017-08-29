$regions_hash = {
  :swi => {
    :name => "Switzerland",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bur, :mun, :tyr, :pie, :mar],
    :army => "",
    :owner => ""
  },
  :adr => {
    :name => "Adriatic Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:tri, :alb, :ion, :apu, :ven],
    :army => "",
    :owner => ""
  },
  :aeg => {
    :name => "Aegean Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:con, :smy, :eas, :ion, :gre, :bul],
    :army => "",
    :owner => ""
  },
  :alb => {
    :name => "Albania",
    :type => "l",
    :supply_center => false,
    :neighbours => [:tri, :ser, :gre, :ion, :adr],
    :army => "",
    :owner => ""
  },
  :ank => {
    :name => "Ankara",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :arm, :smy, :con],
    :army => "",
    :owner => "Turkey"
  },
  :apu => {
    :name => "Apulia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:adr, :opn, :nap, :rom, :ven],
    :army => "",
    :owner => ""
  },
  :arm => {
    :name => "Armenia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:sev, :bla, :ank, :smy, :syr],
    :army => "",
    :owner => ""
  },
  :bal => {
    :name => "Baltic Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:bot, :lvn, :pru, :ber, :kie, :den, :swe],
    :army => "",
    :owner => ""
  },
  :bar => {
    :name => "Barents Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :nwy, :stp],
    :army => "",
    :owner => ""
  },
  :bel => {
    :name => "Belgium",
    :type => "l",
    :supply_center => true,
    :neighbours => [:hol, :ruh, :bur, :pic, :eng],
    :army => "",
    :owner => ""
  },
  :ber => {
    :name => "Berlin",
    :type => "l",
    :supply_center => true,
    :neighbours => [:pru, :sil, :mun, :kie, :bal],
    :army => "",
    :owner => "Germany"
  },
  :bla => {
    :name => "Black Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:sev, :arm, :ank, :con, :bul, :rum],
    :army => "",
    :owner => ""
  },
  :boh => {
    :name => "Bohemia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:sil, :gal, :vie, :tyr, :mun],
    :army => "",
    :owner => ""
  },
  :bre => {
    :name => "Brest",
    :type => "l",
    :supply_center => true,
    :neighbours => [:par, :gas, :mao, :eng, :pic],
    :army => "",
    :owner => "France"
  },
  :bud => {
    :name => "Budapest",
    :type => "l",
    :supply_center => true,
    :neighbours => [:rum, :ser, :tri, :vie, :gal],
    :army => "",
    :owner => "Austria"
  },
  :bul => {
    :name => "Bulgaria",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :con, :aeg, :gre, :ser, :rum],
    :army => "",
    :owner => ""
  },
  :bur => {
    :name => "Burgundy",
    :type => "l",
    :supply_center => false,
    :neighbours => [:par, :pic, :bel, :ruh, :mun, :swi, :mar, :gas],
    :army => "",
    :owner => ""
  },
  :cly => {
    :name => "Clyde",
    :type => "l",
    :supply_center => false,
    :neighbours => [:nao, :nwg, :edi, :lvp],
    :army => "",
    :owner => ""
  },
  :con => {
    :name => "Constantinople",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :ank, :smy, :aeg, :bul],
    :army => "",
    :owner => "Turkey"
  },
  :den => {
    :name => "Denmark",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ska, :swe, :bal, :kie, :hel, :nth],
    :army => "",
    :owner => ""
  },
  :eas => {
    :name => "Eastern Mediterranean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:syr, :smy, :aeg, :ion],
    :army => "",
    :owner => ""
  },
  :edi => {
    :name => "Edinburgh",
    :type => "l",
    :supply_center => true,
    :neighbours => [:cly, :nwg, :nth, :yor, :lvp],
    :army => "",
    :owner => "England"
  },
  :eng => {
    :name => "English Channel",
    :type => "w",
    :supply_center => false,
    :neighbours => [:iri, :mao, :bre, :pic, :bel, :nth, :lon, :wal],
    :army => "",
    :owner => ""
  },
  :fin => {
    :name => "Finland",
    :type => "l",
    :supply_center => false,
    :neighbours => [:swe, :nwy, :stp, :bot],
    :army => "",
    :owner => ""
  },
  :gal => {
    :name => "Galicia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:ukr, :rum, :bud, :vie, :boh, :sil, :war],
    :army => "",
    :owner => ""
  },
  :gas => {
    :name => "Gascony",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bre, :par, :bur, :mar, :spa, :mao],
    :army => "",
    :owner => ""
  },
  :gre => {
    :name => "Greece",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ion, :aeg, :bul, :ser, :alb],
    :army => "",
    :owner => ""
  },
  :lyo => {
    :name => "Gulf of Lyon",
    :type => "w",
    :supply_center => false,
    :neighbours => [:wes, :spa, :mar, :pie, :tus, :tys],
    :army => "",
    :owner => ""
  },
  :bot => {
    :name => "Gulf of Bothnia",
    :type => "w",
    :supply_center => false,
    :neighbours => [:swe, :fin, :stp, :lvn, :bal],
    :army => "",
    :owner => ""
  },
  :hel => {
    :name => "Helgoland Bight",
    :type => "w",
    :supply_center => false,
    :neighbours => [:den, :kie, :hol, :nth],
    :army => "",
    :owner => ""
  },
  :hol => {
    :name => "Holland",
    :type => "l",
    :supply_center => true,
    :neighbours => [:kie, :ruh, :ber, :nth, :hel],
    :army => "",
    :owner => ""
  },
  :ion => {
    :name => "Ionian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:eas, :aeg, :gre, :alb, :adr, :apu, :nap, :tys, :tun],
    :army => "",
    :owner => ""
  },
  :iri => {
    :name => "Irish Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nao, :lvp, :wal, :eng, :mao],
    :army => "",
    :owner => ""
  },
  :kie => {
    :name => "Kiel",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ber, :mun, :ruh, :hol, :hel, :den, :bal],
    :army => "",
    :owner => "Germany"
  },
  :lvp => {
    :name => "Liverpool",
    :type => "l",
    :supply_center => true,
    :neighbours => [:iri, :nao, :cly, :edi, :yor, :wal, ],
    :army => "",
    :owner => "England"
  },
  :lvn => {
    :name => "Livonia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bot, :stp, :mos, :war, :pru, :bal],
    :army => "",
    :owner => ""
  },
  :lon => {
    :name => "London",
    :type => "l",
    :supply_center => true,
    :neighbours => [:yor, :nth, :eng, :wal],
    :army => "",
    :owner => "England"
  },
  :mar => {
    :name => "Marseilles",
    :type => "l",
    :supply_center => true,
    :neighbours => [:gas, :bur, :swi, :pie, :lyo, :spa],
    :army => "",
    :owner => "France"
  },
  :mao => {
    :name => "Middle Atlantic Ocean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:naf, :wes, :spa, :por, :gas, :bre, :eng, :iri, :nao],
    :army => "",
    :owner => ""
  },
  :mos => {
    :name => "Moscow",
    :type => "l",
    :supply_center => true,
    :neighbours => [:stp, :lvn, :war, :ukr, :sev],
    :army => "",
    :owner => "Russia"
  },
  :mun => {
    :name => "Munich",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ruh, :kie, :ber, :sil, :boh, :tyr, :swi, :bur],
    :army => "",
    :owner => "Germany"
  },
  :nap => {
    :name => "Naples",
    :type => "l",
    :supply_center => true,
    :neighbours => [:apu, :ion, :tys, :rom],
    :army => "",
    :owner => "Italy"
  },
  :nao => {
    :name => "North Atlantic Ocean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :cly, :lvp, :iri, :mao],
    :army => "",
    :owner => ""
  },
  :naf => {
    :name => "North Africa",
    :type => "l",
    :supply_center => false,
    :neighbours => [:tun, :wes, :mao],
    :army => "",
    :owner => ""
  },
  :nth => {
    :name => "North Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :nwy, :ska, :den, :hel, :hol, :bel, :eng, :lon, :yor, :edi],
    :army => "",
    :owner => ""
  },
  :nwy => {
    :name => "Norway",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nth, :nwg, :bar, :stp, :fin, :swe, :ska, :den],
    :army => "",
    :owner => ""
  },
  :nwg => {
    :name => "Norwegian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nao, :cly, :edi, :nth, :nwy, :bar],
    :army => "",
    :owner => ""
  },
  :par => {
    :name => "Paris",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bre, :pic, :bur, :gas],
    :army => "",
    :owner => "France"
  },
  :pic => {
    :name => "Picardy",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bel, :bur, :par, :bre, :eng],
    :army => "",
    :owner => ""
  },
  :pie => {
    :name => "Piedmont",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mar, :swi, :tyr, :ven, :tus, :lyo],
    :army => "",
    :owner => ""
  },
  :por => {
    :name => "Portugal",
    :type => "l",
    :supply_center => true,
    :neighbours => [:mao, :spa],
    :army => "",
    :owner => ""
  },
  :pru => {
    :name => "Prussia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:lvn, :war, :sil, :ber, :bal],
    :army => "",
    :owner => ""
  },
  :rom => {
    :name => "Rome",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nap, :tys, :tus, :ven, :apu],
    :army => "",
    :owner => "Italy"
  },
  :ruh => {
    :name => "Ruhr",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bel, :hol, :kie, :mun, :bur],
    :army => "",
    :owner => ""
  },
  :rum => {
    :name => "Rumania",
    :type => "l",
    :supply_center => true,
    :neighbours => [:gal, :ukr, :sev, :bla, :bul, :ser, :bud],
    :army => "",
    :owner => ""
  },
  :ser => {
    :name => "Serbia",
    :type => "l",
    :supply_center => true,
    :neighbours => [:rum, :bul, :gre, :alb, :tri, :bud],
    :army => "",
    :owner => ""
  },
  :sev => {
    :name => "Sevastopol",
    :type => "l",
    :supply_center => true,
    :neighbours => [:mos, :ukr, :rum, :bla, :arm],
    :army => "",
    :owner => "Russia"
  },
  :sil => {
    :name => "Silesia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:ber, :pru, :war, :gal, :boh, :mun],
    :army => "",
    :owner => ""
  },
  :ska => {
    :name => "Skagerrak",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwy, :swe, :den, :nth],
    :army => "",
    :owner => ""
  },
  :smy => {
    :name => "Smyrna",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ank, :arm, :syr, :eas, :aeg, :con],
    :army => "",
    :owner => "Turkey"
  },
  :spa => {
    :name => "Spain",
    :type => "l",
    :supply_center => true,
    :neighbours => [:por, :mao, :gas, :mar, :lyo, :wes],
    :army => "",
    :owner => ""
  },
  :stp => {
    :name => "St Petersburg",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bar, :nwy, :fin, :bot, :lvn, :mos],
    :army => "",
    :owner => "Russia"
  },
  :swe => {
    :name => "Sweden",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nwy, :fin, :bot, :bal, :den, :ska],
    :army => "",
    :owner => ""
  },
  :syr => {
    :name => "Syria",
    :type => "l",
    :supply_center => false,
    :neighbours => [:arm, :smy, :eas],
    :army => "",
    :owner => ""
  },
  :tri => {
    :name => "Trieste",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bud, :ser, :alb, :adr, :ven, :tyr, :vie],
    :army => "",
    :owner => "Austria"
  },
  :tun => {
    :name => "Tunis",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ion, :tys, :wes, :naf],
    :army => "",
    :owner => ""
  },
  :tus => {
    :name => "Tuscany",
    :type => "l",
    :supply_center => false,
    :neighbours => [:rom, :tys, :lyo, :pie, :ven],
    :army => "",
    :owner => ""
  },
  :tyr => {
    :name => "Tyrolia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mun, :boh, :vie, :tri, :ven, :pie],
    :army => "",
    :owner => ""
  },
  :tys => {
    :name => "Tyrrhenian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:tus, :rom, :nap, :ion, :tun, :wes, :lyo],
    :army => "",
    :owner => ""
  },
  :ukr => {
    :name => "Ukraine",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mos, :sev, :rum, :gal, :war],
    :army => "",
    :owner => ""
  },
  :ven => {
    :name => "Venice",
    :type => "l",
    :supply_center => true,
    :neighbours => [:tyr, :pie, :tus, :rom, :apu, :adr, :tri],
    :army => "",
    :owner => "Italy"
  },
  :vie => {
    :name => "Vienna",
    :type => "l",
    :supply_center => true,
    :neighbours => [:boh, :gal, :bud, :tri, :tyr],
    :army => "",
    :owner => "Austria"
  },
  :wal => {
    :name => "Wales",
    :type => "l",
    :supply_center => false,
    :neighbours => [:iri, :eng, :lon, :yor, :lvp],
    :army => "",
    :owner => ""
  },
  :war => {
    :name => "Warsaw",
    :type => "l",
    :supply_center => true,
    :neighbours => [:pru, :lvn, :mos, :ukr, :gal, :sil],
    :army => "",
    :owner => "Russia"
  },
  :wes => {
    :name => "Western Mediterranean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:spa, :lyo, :tys, :tun, :naf, :mao],
    :army => "",
    :owner => ""
  },
  :yor => {
    :name => "Yorkshire",
    :type => "l",
    :supply_center => false,
    :neighbours => [:edi, :lvp, :nth, :lon, :wal],
    :army => "",
    :owner => ""
  }
}