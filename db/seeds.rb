# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

park_list = [
    {
        image: "https://images.unsplash.com/photo-1592670130129-4388cdb9d76e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2031&q=80",
        name: "Amboseli National Park",
        location: "Loitoktok",
        Summary: "Amboseli is often called the ‘Land of Giants’ – due to the impressive elephants here carrying massive tusks. The animals are set against breathtaking vistas of Mt Kilimanjaro, which makes an awesome backdrop to the small park. Aside from elephants, many plains animals are easy to spot. Fantastic photo opportunities are possible, and early mornings are best for clear views of Kilimanjaro.",
        visit_site: "https://national-parks.org/kenya/amboseli"
    },
    {
        image: "https://images.unsplash.com/photo-1628100672374-4e3e419927d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1165&q=80",
        name: "Meru National Park",
        location: "Meru",
        Summary: "Meru is a lot less busy than some of Kenya’s more popular parks, and has an unspoilt feel. All of the Big Five are present. Elephant and buffalo are very common, and there is an enclosed rhino sanctuary containing both black and white rhino. The park is extremely scenic with tall doum palms growing along the park’s many watercourses.",
        visit_site: "https://national-parks.org/kenya/meru"
    },
    {
        image: "https://images.unsplash.com/photo-1572546123322-518b6def2d71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        name: "Tsavo East National Park",
        location: "Tsavo",
        Summary: "Tsavo East and Tsavo West together form one of the world’s largest national parks, covering 4% of Kenya. Tsavo East NP feels wild and undiscovered; its vast open spaces are mesmerizing. The huge, semi-arid wilderness is home to most safari animals, and although wildlife densities aren’t large, spotting animals is always possible here due to the lack of foliage.",
        visit_site: "https://national-parks.org/kenya/tsavo-east"
    },
    {
        image: "https://images.unsplash.com/photo-1547471080-19acba333038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Tsavo West National Park",
        location: "Tsavo",
        Summary: "Tsavo West together with its expansive Tsavo East neighbor form one of the largest national parks in the world. The park is home to the Big Five, but wildlife viewing can be a bit slow at times. There are, however, several landmarks worth visiting including recent lava flows and Mzima Springs with its underwater observation chamber for close-up views of hippos.",
        visit_site: "https://national-parks.org/kenya/tsavo-west"
    },
    {
        image: "https://images.unsplash.com/photo-1579959815669-88d47693123f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
        name: "Aberdare National Park",
        location: "Aberdare Ranges",
        Summary: "Aberdare National Park protects the mountain range of the same name. Tree hotels are designed for guests to observe wildlife coming to waterholes (or salt licks) in pristine forest habitat. Wildlife viewing from this elevated position is a remarkably rewarding way to see animals otherwise difficult to spot in the dense vegetation.",
        visit_site: "https://national-parks.org/kenya/aberdare"
    },
    {
        image: "https://images.unsplash.com/photo-1580865166544-bf95574de4f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1028&q=80",
        name: "Lake Nakuru National Park",
        location: "Nakuru",
        Summary: "Scenic Lake Nakuru is Kenya’s most popular national park. The park’s main feature is a large, shallow lake supporting great birdlife, including big flocks of pelicans and variable flocks of flamingos. The lake was once famous for its flamingos, however, since 2012, conditions have become unfavorable for these birds and most have moved to other Rift Valley lakes.",
        visit_site: "https://national-parks.org/kenya/lake-nakuru"
    },
    {
        image: "https://images.unsplash.com/photo-1604925217864-4a9d04ddf3ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        name: "Lewa Wildlife Conservancy",
        location: "Laikipia",
        Summary: "Lewa is a prime sanctuary on Laikipia Plateau. It is known for its outstanding conservation record and development work in the local community. It is one of the best places in Kenya to see the Big Five. Sightings are common of both black rhino and white rhino, and it’s also a stronghold for the endangered Grevy's zebra.",
        visit_site: "https://www.lewa.org/"
    },
    {
        image: "https://images.unsplash.com/photo-1536797485467-3809860ee00a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1136&q=80",
        name: "Maasai Mara National Reserve",
        location: "Narok",
        Summary: "The Masai Mara is one of Africa’s most famous parks. The wildlife viewing is superb throughout the year. The grassy plains and regular rainfall supports a huge population of herbivores, in turn attracting many predators. All three big cats are relatively easy to see. The yearly wildebeest migration coming through the park is one of the world’s most amazing wildlife spectacles.",
        visit_site: "https://national-parks.org/kenya/masai-mara"
    },
    {
        image: "https://images.unsplash.com/photo-1574086746807-c364bc64ac7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Nairobi National Park",
        location: "Nairobi",
        Summary: "Nairobi National Park lies within sight of Nairobi city, and animals can be seen against a backdrop of high-rise buildings. The park’s proximity to a large urban center is unique in Africa and wildlife viewing is surprisingly good. Most big safari animals are present (except elephants). There is a small walk at the entrance leading through indigenous forest, and several wildlife enclosures.",
        visit_site: "https://national-parks.org/kenya/nairobi"
    },
    {
        image: "https://images.unsplash.com/photo-1643694200656-96bf459fe5dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        name: "Ol Pejeta Conservancy",
        location: "Laikipia",
        Summary: "Ol Pejeta is one of the prime sanctuaries of Laikipia Plateau and all of the Big Five are present. Its highlights include the largest black rhino sanctuary in East Africa; a population of southern white rhino; a refuge for the last two northern white rhino left in the world; and Sweetwaters Chimpanzee Sanctuary, housing orphaned and abandoned chimpanzees.",
        visit_site: "https://www.olpejetaconservancy.org/"
    },
    {
        image: "https://images.unsplash.com/photo-1558907685-994933919d3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        name: "Samburu National Reserve",
        location: "Samburu",
        Summary: "Samburu is the most popular reserve in northern Kenya. Wildlife viewing is good, and most big safari animals are easily spotted. The arid environment is home to a variety of north Kenya specials – both birds and mammals. A village visit to a nearby Samburu homestead is a worthwhile activity.",
        visit_site: "https://www.samburu.net/"
    }
]