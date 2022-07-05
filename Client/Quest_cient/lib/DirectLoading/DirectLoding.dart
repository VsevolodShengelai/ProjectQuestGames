import 'dart:convert';

Map directLoaderCaptainClark() {
  String textData = r'''
{
  "Description": {
    "name": "Капитан Кларк",
    "author": "Константин (Таро)",
    "info": "Вам предстоит играть за капитана подводного батискафа - Кларка",
    "scores": 400
  },
  "book": {
    "Chapter1": {
      "part1": {
        "text": " База Тетис являлась центром торговли. Здесь обосновались главные офисы торгово-промышленных корпораций. Именно сюда доставлялись добытые подводными старателями со дна океана - ламинарии, морепродукты, металлы и пластик. Пластик собирали в гиганских плавающих мусорных островах. Металлы производили из руды, которую добывали в глубоководных шахтах. Именно здесь, на Тетисе, можно было легче всего найти работу. \n Ваш потрёпанный годами двухместный батискаф <<Морж>> лениво покачивался в доке.",
        "buttons": {
          "button1": {
            "name": "Далее",
            "goto": "part2"
          }
        }
      },
      "part2": {
        "text": "Вы подошли к тумбе с монитором. На экране как безумные мельтешили рекламные ролики. Щели выхода звука кто-то заклеил липким скотчем Не одного вас раздражали громкие голоса, призывающие срочно купить очередную ненужную вещь. На металлическом боку тумбы терминала вы заметили голографическую надпись. Кто-то написал фломастером с цветнымии нано-чернилами: <<Спасём подводный мир нашей планеты!>>. Рядом красовалась эмблема общества <<Марин-Пис>>",
        "buttons": {
          "button1": {
            "name": "Посмотреть последние новости",
            "goto": "part3"
          },
          "button2": {
            "name": "Посмотреть коммерческие предложения",
            "goto": "part4"
          }
        }
      },
      "part3": {
        "text": " Вчера от горнорудного батискафа \"М-17\" был получен сигнал SOS. В туннелях шахты, принадлежащей корпорации \"Металл-инвест\", произошла авария. \n Компания \"Биотик-Инкорпорейтед\" на этой неделе снизила цены на 20% закупочные цены на ламинарии. \n Вчера военная патрульная чубмарина предотвратила нелегальный ввоз контрабанды с грузом пластика",
        "buttons": {
          "button1": {
            "name": "Далее",
            "goto": "part2"
          }
        }
      },
      "part4": {
        "text": " В информационной Базе на данный момент есть два предложения.",
        "buttons": {
          "button1": {
            "name": "Предложение от корпорации \"Металл инвест\"",
            "goto": "part5"
          },
          "button2": {
            "name": "Научная премия от лаборатории \"Аэро\"",
            "goto": "part1"
          }
        }
      },
      "part5": {
        "text": "Корпорация \"Метал инвест\" предлагает 1000 кредитов за спасение застрявшего в туннелях горнодобывающего батискафа \"М-17\". \n Вам по зарез нужны деньги и вы с радостью ухватились за это предложение..",
        "buttons": {
          "button1": {
            "name": "Это неплохие деньги",
            "goto": "part6"
          }
        }
      },
      "part6": {
        "text": "Корпорация \"Металл инвест\" рада приветствовать Вас!\n Необходимо спасти батискаф горняков. Вам будет предоставлен аванс в размере 300 кредитов. На эту сумму вы можете снарядить ваш батискаф всем необходимым.\nУ горняков на батискафе \"М-17\" оограниченный запас кислорода. Нужно поторопиться.\n Если вы готовы взяться за выполнение этой миссии, нажмите на терминале кнопку \"Да\" и компьютер автоматически перешлёт на ваш счёт 300 кредитов. Оставшуюся сумму вы получите после успешного выполнения задания.\n Вы остро нуждаетесь в деньгах, и это предложение было, как нельзя кстати.",
        "buttons": {
          "button1": {
            "name": "Заключить контракт",
            "goto": "part7"
          }
        }
      },
      "part7": {
        "text": "- Заранее хотим Вас предупредить! В случае провала спасательной операции вы не получите ниакого вознагражденичя и наша компания вынуждена будет вычесть с вашего личного счёта 500 кредитов в качестве штрафных санкций.\n С этого момента Контракт вступил в силу.",
        "buttons": {
          "button1": {
            "name": "Вот корпораты! Всю вину сваливают на исполнителя заказа",
            "goto": "part8"
          }
        }
      },
      "part8": {
        "text": "Вы подошли к тумбе с монитором. На экране как безумные мельтешили рекламные ролики. Щели выхода звука кто-то заклеил липким скотчем Не одного вас раздражали громкие голоса, призывающие срочно купить очередную ненужную вещь. На металлическом боку тумбы терминала вы заметили голографическую надпись. Кто-то написал фломастером с цветнымии нано-чернилами: \"Спасём подводный мир нашей планеты!\" рядом красовалась эмблема общества \"Марин-Пис\"",
        "buttons": {
          "button1": {
            "name": "Посмотреть последние новости",
            "goto": "part9"
          },
          "button2": {
            "name": "Посмотреть коммерческие предложения",
            "goto": "part10"
          }
        }
      },
      "part9": {
        "text": "Вчера от горнорудного батискафа \"М-17\" был получен сигнал SOS. В туннелях шахты, принадлежащей корпорации \"Металл-инвест\", произошла авария. \n Компания \"Биотик-Инкорпорейтед\" на этой неделе снизила цены на 20% закупочные цены на ламинарии. \n Вчера военная патрульная чубмарина предотвратила нелегальный ввоз контрабанды с грузом пластика",
        "buttons": {
          "button1": {
            "name": "Посмотреть последние новости",
            "goto": "part8"
          }
        }
      },
      "part10": {
        "text": "В информационной Базе на данный момент есть два предложения.",
        "buttons": {
          "button1": {
            "name": "Научная премия от лаборатории \"Аэро\"",
            "goto": "part11"
          }
        }
      },
      "part11": {
        "text": "(голос диктора)\n Научная лаборатория корпорации \"Аэро\" предлагает всем желающим пройти тест-эксперимент на проверку новой кислородно-гелиевой смеси для дыхания на глубине более 2000 метров. Вознаграждение в эксперименте - 500 кредитов. \n Если вы согласны на эксперимент, то он начнётся прямо сейчас!",
        "buttons": {
          "button1": {
            "name": "Принять участие в эксперименте",
            "goto": "part12"
          }
        }
      },
      "part12": {
        "text": "Вы посетили лабораторию компании \"Аэро\" и подписали документы, по которым компания не несёт никакой ответственности за последствия эксперимента, в котором вы будете участвовать. Вас предупредили , что вы можее в любой момент прекратить эксперимент, но тогда вы получмте лишь половину вознаграждения (250 кредитов). \n Вы с группой учёных на батискафе приплыли на участок океана с большой глубиной. Вас будут медленно опускать на глубину 200 метров и менять состав газовой смеси, чтобы проверить, как это сказывается на вашем самочувствии. \n На вас надели тяжёлый подводный скафандр и прикрепили на спине несколько баллонов с газовой смесью. Учёные будут дистанционно управлять клапанами подачи гелия, азота и кислорода из балонов в ваш шлем. \n Связь с учёными будет осуществляться по рации.\n Погружение началось",
        "buttons": {
          "button1": {
            "name": "Поехали!!",
            "goto": "part13"
          }
        }
      },
      "part13": {
        "text": "(Голос учёного в вашем шлемофоне)\n\n Глубина 100 метров!\n Глубина 200 метров!\n Капитан Кларк, ваше самочуствие?\n\n-Вроде всё нормально. Небольшое головокружение.\n\n-Отлично! меняю состав газовой смеси!\n\n(Голос учёного в вашем шлемофоне)\nГлубина 300 метров!\nГлубина 400 метров! Меняю состав смеси.\n\nВнезапно вы почуствовали, как у вас начали сильно дрожать руки",
        "buttons": {
          "button1": {
            "name": "Скажете по рации, что требуете прекратить эксперимент",
            "goto": "part14"
          },
          "button2": {
            "name": "Продолжите эксперимент",
            "goto": "part15"
          }
        }
      },
      "part14": {
        "text": "Вы решили не рисковать. Если вы уже почувствовали недомогание - то что случится на глубине 1000 метров? Вы забирате гонорар, о котором договаривались - 250 кредитов при прерванном эксперименте и идёте в спальню на \"Морже\", чтобы отдохнуть пару часов перед спасением команды затонувшего батискафа.",
        "buttons": {
          "button1": {
            "name": "Конец",
            "goto": "part16",
            "end": "GOOD"
          }
        }
      },
      "part15": {
        "text": "Внезапно из сумрака подводной глубины прямо на вас начало приближаться что-то огромное. Вы в панике начали шарить руками по вашему скаандру в поисках ножа или другого оружия. Кажется, эти учёные даже не позаботились, чтобы оснастить ва оружием. На этой глубине могут обитать какие угодно чудовища! не выдержав, вы начали кричать в шлемофон - \"Скорее вытаскивайте меня наверх! Ко мне приближается какой-то монстр!!\"\n\n(Голос учёного)\n-Наш эхолот зафиксировал что-то крупное. Оставайтесь в спокойствии, мы вас поднимаем!\n\n Вы решились включить прожекторы, чтобы осмотреться. Внезапно в их свете мелькнуло существо с глазом размером с тарелку - это был огромный кальмар. Свет прожектора спровоцировал его напасть.Он обхватил вас щупальцами и начал прокусывать металл скафандра...\n Учёные смогли вас поднять, но на глубине около 100 метров вы испытали давление в 9 атмосфер, когда кальмар прокусил скафандр. Все органы пострадали, не критично, но достаточно, чтобы вы поставили крест на карьере пилота батискафа.",
        "buttons": {
          "button1": {
            "name": "Конец",
            "goto": "part16",
            "end": "BAD"
          }
        }
      },
      "part16": {
        "text": "",
        "buttons": {
          "button1": {
            "name": "",
            "goto": "part16"
          }
        }
      }
    },
    "Chapter2": {
      "part1": {
        "text": "Это текст первой части текстового квеста",
        "buttons": {
          "button1": {
            "name": "last",
            "goto": "part2"
          },
          "button2": {
            "name": "last",
            "goto": "part2"
          }
        }
      }
    }
  }
}
''';
  Map jsondata = json.decode(textData);
  return jsondata;
}