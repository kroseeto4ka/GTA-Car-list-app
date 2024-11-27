//
//  CarRepository.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

class CarRepository {
    func getData() -> [CarModel] {
        return [
            CarModel(
                image: Images.annisElegyRH8,
                vendor: Vendors.annis,
                model: Models.annisElegyRH8,
                capacity: 2,
                price: 95000,
                description: Descriptions.annisElegyRH8,
                type: CarTypes.sportCar
            ),
            CarModel(
                image: Images.bravadoBanshee,
                vendor: Vendors.bravado,
                model: Models.bravadoBanshee,
                capacity: 2,
                price: 126000,
                description: Descriptions.bravadoBanshee,
                type: CarTypes.sportCar
            ),
            CarModel(
                image: Images.pfisterCometS2Cabrio,
                vendor: Vendors.pfister,
                model: Models.pfisterCometS2Cabrio,
                capacity: 2,
                price: 1797000,
                description: Descriptions.pfisterCometS2Cabrio,
                type: CarTypes.sportCar
            ),
            CarModel(
                image: Images.karinFuto,
                vendor: Vendors.karin,
                model: Models.karinFuto,
                capacity: 2,
                price: 9000,
                description: Descriptions.karinFuto,
                type: CarTypes.sportCar
            ),
            CarModel(
                image: Images.enusParagonR,
                vendor: Vendors.enus,
                model: Models.enusParagonR,
                capacity: 2,
                price: 905000,
                description: Descriptions.enusParagonR,
                type: CarTypes.sportCar
            ),
            CarModel(
                image: Images.vapidDominator,
                vendor: Vendors.vapid,
                model: Models.vapidDominator,
                capacity: 2,
                price: 35000,
                description: Descriptions.vapidDominator,
                type: CarTypes.muscleCar
            ),
            CarModel(
                image: Images.declasseVigero,
                vendor: Vendors.declasse,
                model: Models.declasseVigero,
                capacity: 2,
                price: 21000,
                description: Descriptions.declasseVigero,
                type: CarTypes.muscleCar
            ),
            CarModel(
                image: Images.runeCheburek,
                vendor: Vendors.rune,
                model: Models.runeCheburek,
                capacity: 4,
                price: 145000,
                description: Descriptions.runeCheburek,
                type: CarTypes.sportClassic
            ),
            CarModel(
                image: Images.vapidPeyote,
                vendor: Vendors.vapid,
                model: Models.vapidPeyote,
                capacity: 2,
                price: 38000,
                description: Descriptions.vapidPeyote,
                type: CarTypes.sportClassic
            ),
            CarModel(
                image: Images.bollokanPraire,
                vendor: Vendors.Bollokan,
                model: Models.bollokanPraire,
                capacity: 2,
                price: 25000,
                description: Descriptions.bollokanPraire,
                type: CarTypes.compact
            )
        ]
    }
}

//MARK: - Constatnts
extension CarRepository {
    enum Vendors {
        static let annis = "Annis"
        static let bravado = "Bravado"
        static let pfister = "Pfister"
        static let karin = "Karin"
        static let enus = "Enus"
        static let vapid = "Vapid"
        static let declasse = "Declasse"
        static let rune = "Rune"
        static let Bollokan = "Bollokan"
    }
    
    enum Models {
        static let annisElegyRH8 = "Elegy RH8"
        static let bravadoBanshee = "Banshee"
        static let pfisterCometS2Cabrio = "S2 Cabrio"
        static let karinFuto = "Futo"
        static let enusParagonR = "Paragon R"
        static let vapidDominator = "Dominator"
        static let declasseVigero = "Vigero"
        static let runeCheburek = "Cheburek"
        static let vapidPeyote = "Peyote"
        static let bollokanPraire = "Praire"
    }
    
    enum Images {
        static let annisElegyRH8 = "annisElegyRH8"
        static let bravadoBanshee = "bravadoBanshee"
        static let pfisterCometS2Cabrio = "pfisterCometS2Cabrio"
        static let karinFuto = "karinFuto"
        static let enusParagonR = "enusParagonR"
        static let vapidDominator = "vapidDominator"
        static let declasseVigero = "declasseVigero"
        static let runeCheburek = "runeCheburek"
        static let vapidPeyote = "vapidPeyote"
        static let bollokanPraire = "bollokanPraire"
    }
    
    enum CarTypes {
        static let sportCar = "Спорткары"
        static let muscleCar = "Маслкары"
        static let compact = "Компакты"
        static let sportClassic = "Спортивная классика"
    }
    
    enum Descriptions {
        static let annisElegyRH8 = "Эта машина выкована в огне горы Фудзи и протестирована на немецких автобанах. И теперь Вы можете приобрести этого убийцу спорткаров не опасаясь визита агентов ФРБ — просто потому, что им больше нравится крушить импортные тачки, чем ловить террористов."
        static let bravadoBanshee = "Название говорит само за себя. В этом юрком спорткаре вы сможете с легкостью командовать дорожным движением. Возьмите надувную куклу на пассажирское сиденье и катайтесь по главной полосе. Остерегайтесь хищников."
        static let pfisterCometS2Cabrio = "Такая лёгкая, быстрая и маневренная машина, что и управлять ей почти не надо. Как ни удивительно, именно её стремятся получить все миллионеры младше 25 лет. Так что ничто не помешает вам прикатить на Вайнвуд-Хиллз, опустить крышу, полюбоваться закатом и заделать детишек на пассажирском сиденье. Вот это и называется рост активов"
        static let karinFuto = "Futo — это подарок от Karin для среднестатистического обывателя, которому только и нужно, что облегченное шасси, задний привод и слабое сцепление с трассой, чтобы скучно не было"
        static let enusParagonR = "Ну вот и всё. Теперь у нас есть Enus, и, значит, человечество выполнило задачу по созданию идеального люксового туристского автомобиля. Да, для этого обучавшимся в частных школах снобам понадобилось в течение многих десятилетий тратить полученные по наследству состояния, и всё-таки нужно отдать им должное: британцы всё сделали как надо. Заслужить такую самоуверенность невозможно, её можно только купить."
        static let vapidDominator = "Подростковые мечты переупакованы для создания массового рынка. Маслкар без мускулов — это настоящий выбор автомобиля для туристов, ищущих кусочек «настоящей» Америки."
        static let declasseVigero = "Когда вы купите эту машину, вам захочется начать курить. Это почти неизбежно. Вы не боитесь опасностей. Вы снова в 70-х и на переднем сиденье, рядом с вами — пьяная девушка из группы поддержки."
        static let runeCheburek = "Пусть слой краски и лака Вас не смущает: Cheburek — ни что иное, как кусок железного занавеса, который пустили на переплавку в погоне за быстрой прибылью в условиях рыночной экономики. Что же касается слухов о том, что дизайн кузова отдали на откуп пятилетнему ребёнку с тяжёлым похмельным синдромом, мы можем заявить лишь одно: свободное предпринимательство — это прекрасно и мы всецело его поддерживаем."
        static let vapidPeyote = "Давным-давно, чтобы заполучить настоящий Peyote, нужно было обследовать нужный район, попытаться завести автомобиль до того, как Вас кто-нибудь увидит, затаиться на два дня и отправиться в автомастерскую только после того, как Вы вытащили пули из своей задницы. Теперь Бенни лично украдёт его, поменяет номера, вытащит пули из собственной задницы, сделает супер-модификации и расскажет друзьям, что Вы всё сделали сами. Подходит для модифицирования в Benny's Original Motor Works."
        static let bollokanPraire = "Первый и последний серийный автомобиль Bollokan появился в салонах до того, как производителю успели намекнуть, что марка ничуть не смахивает на модный немецкий бренд, так что никто его не купил."
    }
}
