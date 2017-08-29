$regions_hash = {
  :swi => {
    :name => "Switzerland",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bur, :mun, :tyr, :pie, :mar],
    :army => nil,
    :owner => nil
  },
  :adr => {
    :name => "Adriatic Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:tri, :alb, :ion, :apu, :ven],
    :army => nil,
    :owner => nil
  },
  :aeg => {
    :name => "Aegean Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:con, :smy, :eas, :ion, :gre, :bul],
    :army => nil,
    :owner => nil
  },
  :alb => {
    :name => "Albania",
    :type => "l",
    :supply_center => false,
    :neighbours => [:tri, :ser, :gre, :ion, :adr],
    :army => nil,
    :owner => nil
  },
  :ank => {
    :name => "Ankara",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :arm, :smy, :con],
    :army => nil,
    :owner => "Turkey"
  },
  :apu => {
    :name => "Apulia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:adr, :opn, :nap, :rom, :ven],
    :army => nil,
    :owner => nil
  },
  :arm => {
    :name => "Armenia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:sev, :bla, :ank, :smy, :syr],
    :army => nil,
    :owner => nil
  },
  :bal => {
    :name => "Baltic Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:bot, :lvn, :pru, :ber, :kie, :den, :swe],
    :army => nil,
    :owner => nil
  },
  :bar => {
    :name => "Barents Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :nwy, :stp],
    :army => nil,
    :owner => nil
  },
  :bel => {
    :name => "Belgium",
    :type => "l",
    :supply_center => true,
    :neighbours => [:hol, :ruh, :bur, :pic, :eng],
    :army => nil,
    :owner => nil
  },
  :ber => {
    :name => "Berlin",
    :type => "l",
    :supply_center => true,
    :neighbours => [:pru, :sil, :mun, :kie, :bal],
    :army => nil,
    :owner => "Germany"
  },
  :bla => {
    :name => "Black Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:sev, :arm, :ank, :con, :bul, :rum],
    :army => nil,
    :owner => nil
  },
  :boh => {
    :name => "Bohemia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:sil, :gal, :vie, :tyr, :mun],
    :army => nil,
    :owner => nil
  },
  :bre => {
    :name => "Brest",
    :type => "l",
    :supply_center => true,
    :neighbours => [:par, :gas, :mao, :eng, :pic],
    :army => nil,
    :owner => "France"
  },
  :bud => {
    :name => "Budapest",
    :type => "l",
    :supply_center => true,
    :neighbours => [:rum, :ser, :tri, :vie, :gal],
    :army => nil,
    :owner => "Austria"
  },
  :bul => {
    :name => "Bulgaria",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :con, :aeg, :gre, :ser, :rum],
    :army => nil,
    :owner => nil
  },
  :bur => {
    :name => "Burgundy",
    :type => "l",
    :supply_center => false,
    :neighbours => [:par, :pic, :bel, :ruh, :mun, :swi, :mar, :gas],
    :army => nil,
    :owner => nil
  },
  :cly => {
    :name => "Clyde",
    :type => "l",
    :supply_center => false,
    :neighbours => [:nao, :nwg, :edi, :lvp],
    :army => nil,
    :owner => nil
  },
  :con => {
    :name => "Constantinople",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bla, :ank, :smy, :aeg, :bul],
    :army => nil,
    :owner => "Turkey"
  },
  :den => {
    :name => "Denmark",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ska, :swe, :bal, :kie, :hel, :nth],
    :army => nil,
    :owner => nil
  },
  :eas => {
    :name => "Eastern Mediterranean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:syr, :smy, :aeg, :ion],
    :army => nil,
    :owner => nil
  },
  :edi => {
    :name => "Edinburgh",
    :type => "l",
    :supply_center => true,
    :neighbours => [:cly, :nwg, :nth, :yor, :lvp],
    :army => nil,
    :owner => "England"
  },
  :eng => {
    :name => "English Channel",
    :type => "w",
    :supply_center => false,
    :neighbours => [:iri, :mao, :bre, :pic, :bel, :nth, :lon, :wal],
    :army => nil,
    :owner => nil
  },
  :fin => {
    :name => "Finland",
    :type => "l",
    :supply_center => false,
    :neighbours => [:swe, :nwy, :stp, :bot],
    :army => nil,
    :owner => nil
  },
  :gal => {
    :name => "Galicia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:ukr, :rum, :bud, :vie, :boh, :sil, :war],
    :army => nil,
    :owner => nil
  },
  :gas => {
    :name => "Gascony",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bre, :par, :bur, :mar, :spa, :mao],
    :army => nil,
    :owner => nil
  },
  :gre => {
    :name => "Greece",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ion, :aeg, :bul, :ser, :alb],
    :army => nil,
    :owner => nil
  },
  :lyo => {
    :name => "Gulf of Lyon",
    :type => "w",
    :supply_center => false,
    :neighbours => [:wes, :spa, :mar, :pie, :tus, :tys],
    :army => nil,
    :owner => nil
  },
  :bot => {
    :name => "Gulf of Bothnia",
    :type => "w",
    :supply_center => false,
    :neighbours => [:swe, :fin, :stp, :lvn, :bal],
    :army => nil,
    :owner => nil
  },
  :hel => {
    :name => "Helgoland Bight",
    :type => "w",
    :supply_center => false,
    :neighbours => [:den, :kie, :hol, :nth],
    :army => nil,
    :owner => nil
  },
  :hol => {
    :name => "Holland",
    :type => "l",
    :supply_center => true,
    :neighbours => [:kie, :ruh, :ber, :nth, :hel],
    :army => nil,
    :owner => nil
  },
  :ion => {
    :name => "Ionian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:eas, :aeg, :gre, :alb, :adr, :apu, :nap, :tys, :tun],
    :army => nil,
    :owner => nil
  },
  :iri => {
    :name => "Irish Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nao, :lvp, :wal, :eng, :mao],
    :army => nil,
    :owner => nil
  },
  :kie => {
    :name => "Kiel",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ber, :mun, :ruh, :hol, :hel, :den, :bal],
    :army => nil,
    :owner => "Germany"
  },
  :lvp => {
    :name => "Liverpool",
    :type => "l",
    :supply_center => true,
    :neighbours => [:iri, :nao, :cly, :edi, :yor, :wal, ],
    :army => nil,
    :owner => "England"
  },
  :lvn => {
    :name => "Livonia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bot, :stp, :mos, :war, :pru, :bal],
    :army => nil,
    :owner => nil
  },
  :lon => {
    :name => "London",
    :type => "l",
    :supply_center => true,
    :neighbours => [:yor, :nth, :eng, :wal],
    :army => nil,
    :owner => "England"
  },
  :mar => {
    :name => "Marseilles",
    :type => "l",
    :supply_center => true,
    :neighbours => [:gas, :bur, :swi, :pie, :lyo, :spa],
    :army => nil,
    :owner => "France"
  },
  :mao => {
    :name => "Middle Atlantic Ocean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:naf, :wes, :spa, :por, :gas, :bre, :eng, :iri, :nao],
    :army => nil,
    :owner => nil
  },
  :mos => {
    :name => "Moscow",
    :type => "l",
    :supply_center => true,
    :neighbours => [:stp, :lvn, :war, :ukr, :sev],
    :army => nil,
    :owner => "Russia"
  },
  :mun => {
    :name => "Munich",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ruh, :kie, :ber, :sil, :boh, :tyr, :swi, :bur],
    :army => nil,
    :owner => "Germany"
  },
  :nap => {
    :name => "Naples",
    :type => "l",
    :supply_center => true,
    :neighbours => [:apu, :ion, :tys, :rom],
    :army => nil,
    :owner => "Italy"
  },
  :nao => {
    :name => "North Atlantic Ocean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :cly, :lvp, :iri, :mao],
    :army => nil,
    :owner => nil
  },
  :naf => {
    :name => "North Africa",
    :type => "l",
    :supply_center => false,
    :neighbours => [:tun, :wes, :mao],
    :army => nil,
    :owner => nil
  },
  :nth => {
    :name => "North Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwg, :nwy, :ska, :den, :hel, :hol, :bel, :eng, :lon, :yor, :edi],
    :army => nil,
    :owner => nil
  },
  :nwy => {
    :name => "Norway",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nth, :nwg, :bar, :stp, :fin, :swe, :ska, :den],
    :army => nil,
    :owner => nil
  },
  :nwg => {
    :name => "Norwegian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nao, :cly, :edi, :nth, :nwy, :bar],
    :army => nil,
    :owner => nil
  },
  :par => {
    :name => "Paris",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bre, :pic, :bur, :gas],
    :army => nil,
    :owner => "France"
  },
  :pic => {
    :name => "Picardy",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bel, :bur, :par, :bre, :eng],
    :army => nil,
    :owner => nil
  },
  :pie => {
    :name => "Piedmont",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mar, :swi, :tyr, :ven, :tus, :lyo],
    :army => nil,
    :owner => nil
  },
  :por => {
    :name => "Portugal",
    :type => "l",
    :supply_center => true,
    :neighbours => [:mao, :spa],
    :army => nil,
    :owner => nil
  },
  :pru => {
    :name => "Prussia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:lvn, :war, :sil, :ber, :bal],
    :army => nil,
    :owner => nil
  },
  :rom => {
    :name => "Rome",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nap, :tys, :tus, :ven, :apu],
    :army => nil,
    :owner => "Italy"
  },
  :ruh => {
    :name => "Ruhr",
    :type => "l",
    :supply_center => false,
    :neighbours => [:bel, :hol, :kie, :mun, :bur],
    :army => nil,
    :owner => nil
  },
  :rum => {
    :name => "Rumania",
    :type => "l",
    :supply_center => true,
    :neighbours => [:gal, :ukr, :sev, :bla, :bul, :ser, :bud],
    :army => nil,
    :owner => nil
  },
  :ser => {
    :name => "Serbia",
    :type => "l",
    :supply_center => true,
    :neighbours => [:rum, :bul, :gre, :alb, :tri, :bud],
    :army => nil,
    :owner => nil
  },
  :sev => {
    :name => "Sevastopol",
    :type => "l",
    :supply_center => true,
    :neighbours => [:mos, :ukr, :rum, :bla, :arm],
    :army => nil,
    :owner => "Russia"
  },
  :sil => {
    :name => "Silesia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:ber, :pru, :war, :gal, :boh, :mun],
    :army => nil,
    :owner => nil
  },
  :ska => {
    :name => "Skagerrak",
    :type => "w",
    :supply_center => false,
    :neighbours => [:nwy, :swe, :den, :nth],
    :army => nil,
    :owner => nil
  },
  :smy => {
    :name => "Smyrna",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ank, :arm, :syr, :eas, :aeg, :con],
    :army => nil,
    :owner => "Turkey"
  },
  :spa => {
    :name => "Spain",
    :type => "l",
    :supply_center => true,
    :neighbours => [:por, :mao, :gas, :mar, :lyo, :wes],
    :army => nil,
    :owner => nil
  },
  :stp => {
    :name => "St Petersburg",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bar, :nwy, :fin, :bot, :lvn, :mos],
    :army => nil,
    :owner => "Russia"
  },
  :swe => {
    :name => "Sweden",
    :type => "l",
    :supply_center => true,
    :neighbours => [:nwy, :fin, :bot, :bal, :den, :ska],
    :army => nil,
    :owner => nil
  },
  :syr => {
    :name => "Syria",
    :type => "l",
    :supply_center => false,
    :neighbours => [:arm, :smy, :eas],
    :army => nil,
    :owner => nil
  },
  :tri => {
    :name => "Trieste",
    :type => "l",
    :supply_center => true,
    :neighbours => [:bud, :ser, :alb, :adr, :ven, :tyr, :vie],
    :army => nil,
    :owner => "Austria"
  },
  :tun => {
    :name => "Tunis",
    :type => "l",
    :supply_center => true,
    :neighbours => [:ion, :tys, :wes, :naf],
    :army => nil,
    :owner => nil
  },
  :tus => {
    :name => "Tuscany",
    :type => "l",
    :supply_center => false,
    :neighbours => [:rom, :tys, :lyo, :pie, :ven],
    :army => nil,
    :owner => nil
  },
  :tyr => {
    :name => "Tyrolia",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mun, :boh, :vie, :tri, :ven, :pie],
    :army => nil,
    :owner => nil
  },
  :tys => {
    :name => "Tyrrhenian Sea",
    :type => "w",
    :supply_center => false,
    :neighbours => [:tus, :rom, :nap, :ion, :tun, :wes, :lyo],
    :army => nil,
    :owner => nil
  },
  :ukr => {
    :name => "Ukraine",
    :type => "l",
    :supply_center => false,
    :neighbours => [:mos, :sev, :rum, :gal, :war],
    :army => nil,
    :owner => nil
  },
  :ven => {
    :name => "Venice",
    :type => "l",
    :supply_center => true,
    :neighbours => [:tyr, :pie, :tus, :rom, :apu, :adr, :tri],
    :army => nil,
    :owner => "Italy"
  },
  :vie => {
    :name => "Vienna",
    :type => "l",
    :supply_center => true,
    :neighbours => [:boh, :gal, :bud, :tri, :tyr],
    :army => nil,
    :owner => "Austria"
  },
  :wal => {
    :name => "Wales",
    :type => "l",
    :supply_center => false,
    :neighbours => [:iri, :eng, :lon, :yor, :lvp],
    :army => nil,
    :owner => nil
  },
  :war => {
    :name => "Warsaw",
    :type => "l",
    :supply_center => true,
    :neighbours => [:pru, :lvn, :mos, :ukr, :gal, :sil],
    :army => nil,
    :owner => "Russia"
  },
  :wes => {
    :name => "Western Mediterranean",
    :type => "w",
    :supply_center => false,
    :neighbours => [:spa, :lyo, :tys, :tun, :naf, :mao],
    :army => nil,
    :owner => nil
  },
  :yor => {
    :name => "Yorkshire",
    :type => "l",
    :supply_center => false,
    :neighbours => [:edi, :lvp, :nth, :lon, :wal],
    :army => nil,
    :owner => nil
  }
}