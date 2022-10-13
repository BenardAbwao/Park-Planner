# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding data..."
park_list = [
    {
        image: "https://images.unsplash.com/photo-1592670130129-4388cdb9d76e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2031&q=80",
        name: "Amboseli National Park",
        location: "Loitoktok",
        info: "Amboseli is often called the ‘Land of Giants’ – due to the impressive elephants here carrying massive tusks. The animals are set against breathtaking vistas of Mt Kilimanjaro, which makes an awesome backdrop to the small park. Aside from elephants, many plains animals are easy to spot. Fantastic photo opportunities are possible, and early mornings are best for clear views of Kilimanjaro.",
        website: "https://national-parks.org/kenya/amboseli"
    },
    {
        image: "https://images.unsplash.com/photo-1628100672374-4e3e419927d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1165&q=80",
        name: "Meru National Park",
        location: "Meru",
        info: "Meru is a lot less busy than some of Kenya’s more popular parks, and has an unspoilt feel. All of the Big Five are present. Elephant and buffalo are very common, and there is an enclosed rhino sanctuary containing both black and white rhino. The park is extremely scenic with tall doum palms growing along the park’s many watercourses.",
        website: "https://national-parks.org/kenya/meru"
    },
    {
        image: "https://images.unsplash.com/photo-1572546123322-518b6def2d71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        name: "Tsavo East National Park",
        location: "Tsavo",
        info: "Tsavo East and Tsavo West together form one of the world’s largest national parks, covering 4% of Kenya. Tsavo East NP feels wild and undiscovered; its vast open spaces are mesmerizing. The huge, semi-arid wilderness is home to most safari animals, and although wildlife densities aren’t large, spotting animals is always possible here due to the lack of foliage.",
        website: "https://national-parks.org/kenya/tsavo-east"
    },
    {
        image: "https://images.unsplash.com/photo-1547471080-19acba333038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Tsavo West National Park",
        location: "Tsavo",
        info: "Tsavo West together with its expansive Tsavo East neighbor form one of the largest national parks in the world. The park is home to the Big Five, but wildlife viewing can be a bit slow at times. There are, however, several landmarks worth visiting including recent lava flows and Mzima Springs with its underwater observation chamber for close-up views of hippos.",
        website: "https://national-parks.org/kenya/tsavo-west"
    },
    {
        image: "https://images.unsplash.com/photo-1579959815669-88d47693123f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
        name: "Aberdare National Park",
        location: "Aberdare Ranges",
        info: "Aberdare National Park protects the mountain range of the same name. Tree hotels are designed for guests to observe wildlife coming to waterholes (or salt licks) in pristine forest habitat. Wildlife viewing from this elevated position is a remarkably rewarding way to see animals otherwise difficult to spot in the dense vegetation.",
        website: "https://national-parks.org/kenya/aberdare"
    },
    {
        image: "https://images.unsplash.com/photo-1580865166544-bf95574de4f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1028&q=80",
        name: "Lake Nakuru National Park",
        location: "Nakuru",
        info: "Scenic Lake Nakuru is Kenya’s most popular national park. The park’s main feature is a large, shallow lake supporting great birdlife, including big flocks of pelicans and variable flocks of flamingos. The lake was once famous for its flamingos, however, since 2012, conditions have become unfavorable for these birds and most have moved to other Rift Valley lakes.",
        website: "https://national-parks.org/kenya/lake-nakuru"
    },
    {
        image: "https://images.unsplash.com/photo-1604925217864-4a9d04ddf3ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        name: "Lewa Wildlife Conservancy",
        location: "Laikipia",
        info: "Lewa is a prime sanctuary on Laikipia Plateau. It is known for its outstanding conservation record and development work in the local community. It is one of the best places in Kenya to see the Big Five. Sightings are common of both black rhino and white rhino, and it’s also a stronghold for the endangered Grevy's zebra.",
        website: "https://www.lewa.org/"
    },
    {
        image: "https://images.unsplash.com/photo-1536797485467-3809860ee00a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1136&q=80",
        name: "Maasai Mara National Reserve",
        location: "Narok",
        info: "The Masai Mara is one of Africa’s most famous parks. The wildlife viewing is superb throughout the year. The grassy plains and regular rainfall supports a huge population of herbivores, in turn attracting many predators. All three big cats are relatively easy to see. The yearly wildebeest migration coming through the park is one of the world’s most amazing wildlife spectacles.",
        website: "https://national-parks.org/kenya/masai-mara"
    },
    {
        image: "https://images.unsplash.com/photo-1574086746807-c364bc64ac7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Nairobi National Park",
        location: "Nairobi",
        info: "Nairobi National Park lies within sight of Nairobi city, and animals can be seen against a backdrop of high-rise buildings. The park’s proximity to a large urban center is unique in Africa and wildlife viewing is surprisingly good. Most big safari animals are present (except elephants). There is a small walk at the entrance leading through indigenous forest, and several wildlife enclosures.",
        website: "https://national-parks.org/kenya/nairobi"
    },
    {
        image: "https://images.unsplash.com/photo-1643694200656-96bf459fe5dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        name: "Ol Pejeta Conservancy",
        location: "Laikipia",
        info: "Ol Pejeta is one of the prime sanctuaries of Laikipia Plateau and all of the Big Five are present. Its highlights include the largest black rhino sanctuary in East Africa; a population of southern white rhino; a refuge for the last two northern white rhino left in the world; and Sweetwaters Chimpanzee Sanctuary, housing orphaned and abandoned chimpanzees.",
        website: "https://www.olpejetaconservancy.org/"
    },
    {
        image: "https://images.unsplash.com/photo-1558907685-994933919d3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Samburu National Reserve",
        location: "Samburu",
        info: "Samburu is the most popular reserve in northern Kenya. Wildlife viewing is good, and most big safari animals are easily spotted. The arid environment is home to a variety of north Kenya specials – both birds and mammals. A village visit to a nearby Samburu homestead is a worthwhile activity.",
        website: "https://www.samburu.net/"
    }
]

camps_list = [
    {
        image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/23/7f/a4/finch-hattons-luxury.jpg?w=1200&h=-1&s=1",
        name: "Finch Hattons Tented Camp",
        location: "Tsavo West",
        info:"Finch Hattons Luxury Tented Camp is renowned for its outstanding quality of accommodation and service for over 25 years. Located in Tsavo National Park, the camp is a unique safari retreat in the true African wilderness with views of Mount Kilimanjaro and Chyulu Hills Relax in your private suite or by the pool, as you watch the resident Hippo pods wallow in the natural spring-pools that flow through the camp.",
        park_id: 4 
    },
    {
        image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/6a/f8/55/tortilis-camp.jpg?w=800&h=-1&s=1",
        name: "Elewana Tortilis Camp Amboseli",
        location: "Loitoktok",
        info:"Tortilis Camp has a prime location for witnessing the majesty of Africa’s highest mountain, Kilimanjaro. The camp is named after the flat-topped, umbrella thorn tree, the Acacia Tortilis, and embraces a hill in one of Amboseli’s areas of Acacia Tortilis woodland. Located in a private conservancy bordering the national park, game drives, walks, sundowners and bush meals take place both inside the national park and in the conservancy, where guests enjoy exclusivity. ",
        park_id: 1
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/2e/63/7a/doa-doa-safari-club-tented.jpg?w=1200&h=-1&s=1",
        name: "Doa-Doa Safari Club Tented Camp & Lodge",
        location: "Tsavo East",
        info:"Doa-Doa is located in the Galana Ranch bordering the Tsavo East National Park, on the banks of Galana River. Guests will have the chance to enjoy the breathtaking scenery at every moment. Comfortably seated in the private in front of his tent it will be possible to see hippos , crocodiles and other animals that will approach the river to water.",
        park_id: 3
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/73/c2/43/rhino-river-camp.jpg?w=1200&h=-1&s=1",
        name: "Rhino River Camp",
        location: "Meru",
        info:"A collection of six luxury cottages built out of sumptuous caramel canvas and sustainably grown wood, raised on platforms above the gently flowing Kindani River will turn your stay at Rhino River Camp into a quiet, exclusive experience.",
        park_id: 2
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/8a/33/30/filename-dsc-7990-jpg.jpg?w=600&h=-1&s=1",
        name: "Sweetwaters Serena Camp",
        location: "Laikipia",
        info:"A sheltered oasis, clustered around a waterhole and set in the pristine calm of its own private reserve, Sweetwaters Tented Camp is in a class of its own. Abounding with wildlife, unfettered by the more rigorous strictures of the Ol Pejeta Conservancy and designed to offer a charming blend of under canvas ambiance and uncompromising luxury.",
        park_id: 10
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/e2/cb/22/tent-pano.jpg?w=1100&h=-1&s=1",
        name: "Ashnil Samburu Camp",
        location: "Samburu",
        info:"Ashnil Samburu Camp sits in Buffalo Springs Game Reserve which takes its name from an oasis of crystal clear water at the Western end of the reserve. It is separated from samburu National Reserve by Ewaso Nyiro River and is less hilly and dense yet equallly very attractive. After a gruelling game drive you can take a dip in our pool which is a wonderful viewing deck of the Ewaso Nyiro River and laze around in the calm.",
        park_id: 11
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/5c/cd/3a/rooms-and-the-pool.jpg?w=600&h=-1&s=1",
        name: "The Emakoko",
        location: "Nairobi",
        info:"The Emakoko is a 24-bed lodge bordering Nairobi national park, only 45 minutes from all the main city airports & attractions. Access to The Emakoko is only through Nairobi National Park and national park fees are necessary. The Emakoko allows people to start and finish their safari in the wild environment they have travelled to enjoy.",
        park_id: 9
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/77/ee/df/o.jpg?w=1200&h=-1&s=1",
        name: "Mara Leisure Camp",
        location: "Narok",
        info:"Mara Leisure, a Luxury Tented Camp nestled in the Maasai Mara Game Reserve. The camp is situated on the northern border of the game reserve and this makes all areas of the park accessible for game viewing. Our accommodation facilities include 1 exclusive honeymoon tent, 8 spacious jumbo tents, 17 standard “nyati” tents and 3 family “jamii” cottages. With these, all social groups are adequately catered for. You will have the chance to meet the local Maasai community.",
        park_id: 8
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/96/41/3c/elewana-lewa-safari-camp.jpg?w=1200&h=-1&s=1",
        name: "Elewana Lewa Safari Camp",
        location: "Laikipia",
        info:"Sprawling over the rolling plains north of Mt Kenya, Lewa Wildlife Conservancy is a prolific wildlife conservancy that is popular with celebrities, conservationists, writers and photographers. Lewa found recent media attention with stories of a Royal romance and the fairytale engagement that followed. Visitors to Lewa are privy to some of the most spectacular wildlife viewing that Kenya has to offer: lion, leopard and jackal thrive on the rich diversity of prey that inhabits the area. ",
        park_id: 7
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-s/01/ad/d2/fd/vista-de-una-tienda.jpg?w=600&h=-1&s=1",
        name: "Flamingo Hill Tented Camp",
        location: "Nakuru",
        info:"Tucked away in the spectacular Great Rift Valley on the private 6400 acre Congreve Conservancy bordering Lake Nakuru National Park. Mbweha Camp is nestled up against the southern border of Lake Nakuru National Park with beautiful views over the Eburru and Mau ranges. ",
        park_id: 6
    },
    {
        image:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/1f/b9/91/bridge-to-ark.jpg?w=1200&h=-1&s=1",
        name: "The Ark Lodge",
        location: "Aberdare Ranges",
        info:"Set in the heart of the Aberdare National Park, iconic and yes, quirky, The Ark overlooks a floodlit waterhole and salt lick, which attracts a host of awesome wildlife. Resembling and named after Noah’s Ark, The Ark comprises of three decks from which numerous balconies and lounges provide a superb location for wildlife to be seen. ",
        park_id: 5 
    }
]
