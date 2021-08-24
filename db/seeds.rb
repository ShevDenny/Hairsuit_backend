puts 'Clearing old data...🧹'
User.destroy_all
User.reset_pk_sequence
Salon.destroy_all
Salon.reset_pk_sequence
Service.destroy_all
Service.reset_pk_sequence
Appointment.destroy_all
Appointment.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence

puts 'Creating User...🙋🏽‍♀️'
user1 = User.create(name: "Shevon", user_name: "Shev", password: "1234567", email: "s@d.com", admin: true)
user2 = User.create(name: "Corletta", user_name: "Letta", password: "1234567", email: "c@d.com", admin: false)
user3 = User.create(name: "Justin", user_name: "Jus", password: "1234567", email: "j@m.com", admin: false)
user4 = User.create(name: "Shineeza", user_name: "Neeza", password: "1234567", email: "sc@d.com", admin: false)


puts 'Creating Salon...🎀'
salon1 = Salon.create(
    name: 'The Salon By Ursula Stephen ', 
    location: '66 Lafayette Ave Brooklyn, NY 11217', 
    specialize_in: ['color', 'haircut', 'locs', 'blowouts', 'natural hair styling', 'curls'], 
    image: 'https://static.wixstatic.com/media/449eb6_969a324320454fd8a7f4a1ac753aeedc.jpg/v1/fill/w_470,h_577,al_c,q_80,usm_0.66_1.00_0.01/449eb6_969a324320454fd8a7f4a1ac753aeedc.webp', 
    description: 'Ursula Stephen, Celebrity Hairstylist and New Image Beauty Expert is a phenomenon and the hairstylist of choice for many of today’s high profile and fashion-forward celebrities, including Rihanna, Mary J. Blige, Kerry Washington and Laverne Cox just to name a few. 
     
    Ursula has been creating haute hair for more than 15 years and continues to reinvent and revolutionize the beauty and fashion business. Stephen’s work has also appeared on the covers of Elle, Vogue and Glamour magazines worldwide.    
    
    Her boutique salon has been described as "Urban Posh"- the perfect mixture between city chic and the flavor of brooklyn. Stylists at Stephens salon are well skilled in executing cut, color, and treatments for all hair types, textures, and lengths.'
    )

salon2 = Salon.create(
    name: 'Broome Street Society', 
    location: '407 Broome Street New York, NY 10013', 
    specialize_in: ['color', 'haircut', 'twists', 'blowouts', 'braids', 'highlights', 'styling'],
    image:'https://www.galuxsee.com/wp-content/uploads/2017/04/Broome-Street-Society-20170414-Danielle-Jonas-Instagram-Map.jpg', 
    description: 'We are an upscale, green, accessible, full service salon offering a wide portfolio of services including hair styling, coloring, cutting, and extension work. 
    The staff at Broome Street Society is committed to exceptional service provided in a professional  and sustainable environment.'
    )

salon3 = Salon.create(
    name: 'DevaChan Soho', 
    location: '425 Broome Street, New York, NY 10013', 
    specialize_in: ['haircut', 'curls', 'natural hair styling'],
    image: 'https://res.cloudinary.com/devacurl/image/upload/f_auto,q_auto,w_1400,d_true,dpr_auto/DevaCurl/hp_curl-flex-ebony_1500x844', 
    description:'DevaCurl has always adapted to meet the changing needs of those who rely on our products every day. This relaunch is an exciting next step in an evolution of our products that spans more than 25 years. Our understanding of how our consumers’ needs and styling habits change is what has always made these moments of growth possible. The new dermatologist co-developed, stylist-approved DevaCurl products will give curly-haired consumers more Curl Flexibility™ than ever.'
    )
    
    salon4 = Salon.create(
        name: 'Mona Baltazar', 
        location: '526 7th Avenue, Floor 5 New York, NY 10018', 
        specialize_in: ['color', 'haircut', 'blowouts', 'single process', 'natural hair styling', 'curls'],
    image: 'https://static.wixstatic.com/media/a7c72a_dc7cc1bcba424ac880399a1fd337061e~mv2_d_3336_5008_s_4_2.jpg/v1/crop/x_0,y_1117,w_3336,h_2774/fill/w_480,h_413,al_c,q_80,usm_0.66_1.00_0.01/MONACUTS_2017-7320.webp', 
    description: 'Mona Baltazar is a New York City based hair stylist from the Phillipines. She has over 15 years of experience in the industry, and a degree in Fashion Design from the Fashion Institute of Technology. Her goal is to allow her clients to embrace their hair’s natural beauty. Although she cuts all textures, she specializes in enhancing the potential of curly hair. Having straight hair allows her to see curls from an outsider’s perspective, working together with her clients to enhance the beauty that’s already there.'
    )
    
salon5 = Salon.create(
    name: 'Hair Rules', 
    location: '828 9th Avenue, Suite 1, New York, New York, 10019', 
    specialize_in: ['color', 'haircut', 'curls', 'blowouts', 'weaves', 'natural hair styling', 'keratin'],
    specialize_in: ['color', 'haircut', 'curly', 'blowouts', 'wash and press', 'natural hair styling', 'highlights'],
    image: 'https://mk0hairrulesv2n8duml.kinstacdn.com/wp-content/uploads/2019/11/Hair-Rules-Salon-NY-Chairs.jpg', 
    description: 'All textures are uniquely beautiful and should be celebrated. We believe this at our very core. We believe all hair should be free. Our team is here to inspire, celebrate, empower, and embrace all textures. Our team is here for you.'
    )

salon6 = Salon.create(
    name: '5 Salon & Spa', 
    location: '1643 Schlosser St, Fort Lee, NJ 07024', 
    specialize_in: ['color', 'haircut', 'styling', 'blowouts', 'Bridal hair', 'keratin smoothing', 'highlights'],
    image: 'https://images.squarespace-cdn.com/content/v1/5bd9cd8ce749403b5b826574/1604386168888-FKDB0UR7XVEAQRDEIUIX/IMG_4615.jpg?format=1500w', 
    description: '5 Salon &Spa’s objective is to be of service by being Leaders, Educators as well as Information Providers to all by touching, moving and inspiring our community through our craft'
    )

salon7 = Salon.create(
    name: 'Fringe BK', 
    location: '298 Bond Street, Brooklyn, NY', 
    specialize_in: ['color', 'haircut', 'styling', 'blowouts', 'updo', 'glossing', 'highlights'],
    image: 'https://images.squarespace-cdn.com/content/v1/5e40312962402c0ce3659ba0/1626556744528-6441TO5Q8TMYSQZW143D/image-asset.jpeg?format=300w', 
    description: 'In 2014, Fringe owner Amy Schiappa expanded her salon vision, opening Fringe BK near the Gowanus neighborhood of Brooklyn, where she also resides. 
    
    As a founding salon of the ready-to-wear and lived-in hairstyle trends, we continue to transcend the societal norms of what a hair salon should be, by creating a safe, image positive space for our customers during their hair care rituals and personal transformations.'
    )


salon8 = Salon.create(
    name: 'Spoke and Weal', 
    location: '147 Grand St. / Lafayette & Crosby New York, NY 10013', 
    specialize_in: ['Blow Dry', 'haircut', 'keratin', 'blowouts', 'custom color', 'silk press'],
    image: 'https://www.spokeandweal.com/wp-content/uploads/SPOKEWEAL011-3-dragged-3.png', 
    description: 'The best way for us to understand your needs is to see you. Please come in for a complimentary consultation with one of our stylists, colorists, or extension specialists if you do not wish to commit to a full appointment.'
    )

salon9 = Salon.create(
    name: 'Fox & Jane', 
    location: '288 Atlantic Ave, Brooklyn, NY 11201', 
    specialize_in: ['Blow Dry', 'barber', 'pixie', 'haircut', 'keratin', 'blowouts', 'custom color', 'silk press', 'Bridal', 'glossing', 'highlights'],
    image: 'https://foxandjanesalon.com/wp-content/uploads/2018/12/STYLISTCLIENT_P1-600x1000.jpg', 
    description: 'Driven to empower, innovate and uplift the modern beauty industry, Lorean, Billy, and the rest of the Behind the Scenes Crew provide a community experience unlike any other. Through personalized business coaching, continuous education, and a close-knit support system, this top performing industry powerhouse focuses on creating an environment that encourages growth and promotes successful careers. Achieving your goals and taking control of your limitless potential has never felt more like home!'
    )



puts 'Creating Service...💇🏽‍♀️'
Service.create(name: 'Roller Set', price: 50, salon_id: salon1.id)
Service.create(name: 'Wash & Blow Dry' , price: 45, salon_id: salon1.id)
Service.create(name: 'Trim', price: 35, salon_id: salon1.id)
Service.create(name: 'Cut', price: 85 , salon_id: salon1.id)
Service.create(name: 'Relaxer', price: 110, salon_id: salon1.id)
Service.create(name: 'Rinse', price: 45, salon_id: salon1.id)
Service.create(name: 'Lo/Lights', price: 125, salon_id: salon1.id)
Service.create(name: 'Hi/Lo Lights - Full', price: 190, salon_id: salon1.id)
Service.create(name: 'Hi/Lo Lights - Partial', price: 125, salon_id: salon1.id)
Service.create(name: 'Moisturizing Mask', price: 30, salon_id: salon1.id)
Service.create(name: 'Hydrating Mask', price: 40, salon_id: salon1.id)
Service.create(name: 'Luxurious Fortifying Mask', price: 50 , salon_id: salon1.id)
Service.create(name: 'Retwist', price: 90, salon_id: salon1.id)
Service.create(name: 'Starter Locs', price: 90, salon_id: salon1.id)
Service.create(name: 'Rod Set', price: 110, salon_id: salon1.id)
Service.create(name: 'Two-Strand Twist', price: 115, salon_id: salon1.id)
Service.create(name: 'Quick weave', price: 185, salon_id: salon1.id)


Service.create(name: 'Haircuts', price: 110, salon_id: salon2.id)
Service.create(name: 'HighLights', price: 130 , salon_id: salon2.id)
Service.create(name: 'Ombre', price: 255, salon_id: salon2.id)
Service.create(name: 'Full Head Color', price: 160, salon_id: salon2.id)
Service.create(name: 'Twist & Coil Set', price: 80, salon_id: salon2.id)
Service.create(name: 'Silk Press', price: 140, salon_id: salon2.id)
Service.create(name: 'Half Braided Style', price: 80, salon_id: salon2.id)
Service.create(name: 'Full Braided Style', price: 130 , salon_id: salon2.id)
Service.create(name: 'Upstyle', price: 160, salon_id: salon2.id)
Service.create(name: 'Roller Set', price: 70, salon_id: salon2.id)
Service.create(name: 'Blowout', price: 60, salon_id: salon2.id)
Service.create(name: 'Iron Work', price: 90, salon_id: salon2.id)
Service.create(name: 'Keratin/ Smoothing Treatments', price: 300, salon_id: salon2.id)


Service.create(name: 'DevaCut', price: 95, salon_id: salon3.id)
Service.create(name: 'DevaCurl Transformation Service', price: 50, salon_id: salon3.id)
Service.create(name: 'Bounce Back Treatment Service', price: 75, salon_id: salon3.id)
Service.create(name: 'Hair in Heaven Deep Condition', price: 75, salon_id: salon3.id)
Service.create(name: 'Pintura Highlights', price: 205, salon_id: salon3.id)
Service.create(name: 'Color Correction', price: 100, salon_id: salon3.id)


Service.create(name: 'The Mona Cut', price: 295, salon_id: salon4.id)
Service.create(name: 'The Mona Quarterly Cut', price: 245 , salon_id: salon4.id)
Service.create(name: 'Olaplex Treatment Add on', price: 85, salon_id: salon4.id)
Service.create(name: 'Nioxin Scalp Treatment Add on', price: 85, salon_id: salon4.id)
Service.create(name: 'Detox Cleanse Treatment Add on', price: 60, salon_id: salon4.id)
Service.create(name: 'Moisture Therapy Treatment Add on', price: 60, salon_id: salon4.id)
Service.create(name: 'Wash and Style', price: 80, salon_id: salon4.id)
Service.create(name: 'Hair Prep Fee', price: 50, salon_id: salon4.id)


Service.create(name: 'Cut, Shape, Trim', price: 200, salon_id: salon5.id)
Service.create(name: "Men's Haircut", price: 200, salon_id: salon5.id)
Service.create(name: 'Blow Out/Blow Dry/Silk Press', price: 100, salon_id: salon5.id)
Service.create(name: 'Curly Style', price: 100, salon_id: salon5.id)
Service.create(name: 'Weave/Wig Hair Cut', price: 250, salon_id: salon5.id)
Service.create(name: 'Curly Lesson', price: 100, salon_id: salon5.id)
Service.create(name: 'Few Highlights', price: 180, salon_id: salon5.id)
Service.create(name: '1/2 Highlight', price: 255, salon_id: salon5.id)
Service.create(name: 'Full Highlight', price: 300, salon_id: salon5.id)
Service.create(name: 'Single Process', price: 135, salon_id: salon5.id)
Service.create(name: 'Weave Color', price: 200, salon_id: salon5.id)
Service.create(name: 'Olaplex Treatment', price: 50, salon_id: salon5.id)
Service.create(name: 'Creative Color', price: 250, salon_id: salon5.id)
Service.create(name: 'Relaxer', price: 150, salon_id: salon5.id)
Service.create(name: 'Texturizer', price: 150, salon_id: salon5.id)
Service.create(name: 'Scalp and Hair "TING" Treatment', price: 100, salon_id: salon5.id)
Service.create(name: 'Deep Conditioning Treatment (Add On)', price: 25, salon_id: salon5.id)
Service.create(name: 'Solo Keratin Zero (formaldehyde free)', price: 300, salon_id: salon5.id)
Service.create(name: 'Formal Style', price: 200, salon_id: salon5.id)
Service.create(name: 'In-Salon Trial', price: 300, salon_id: salon5.id)



Service.create(name: 'Womens Haircuts', price: 65, salon_id: salon6.id)
Service.create(name: 'Mens Haircuts', price: 45, salon_id: salon6.id)
Service.create(name: 'Blowdry', price: 45, salon_id: salon6.id)
Service.create(name: 'Formal Styling', price: 75, salon_id: salon6.id)
Service.create(name: 'Keratin Smoothing Treatment', price: 300, salon_id: salon6.id)
Service.create(name: 'SP Treatment', price: 50, salon_id: salon6.id)
Service.create(name: 'In-house Colorist', price: 85, salon_id: salon6.id)
Service.create(name: 'Single Process w/ glaze', price: 100, salon_id: salon6.id)
Service.create(name: 'Highlights', price: 140, salon_id: salon6.id)
Service.create(name: 'Painting/Ombre/Creative', price: 175, salon_id: salon6.id)
Service.create(name: 'Double Process', price: 155, salon_id: salon6.id)


Service.create(name: 'Owner Cut', price: 165, salon_id: salon7.id)
Service.create(name: 'Stylist Cut', price: 105, salon_id: salon7.id)
Service.create(name: 'Up-do', price: 100, salon_id: salon7.id)
Service.create(name: 'Blowout', price: 65, salon_id: salon7.id)
Service.create(name: 'Single Process', price: 90, salon_id: salon7.id)
Service.create(name: 'Double Process', price: 130, salon_id: salon7.id)
Service.create(name: 'Full Head Highlights', price: 195, salon_id: salon7.id)
Service.create(name: 'Half Head Highlights', price: 160, salon_id: salon7.id)
Service.create(name: 'Face Frame Highlights', price: 110, salon_id: salon7.id)
Service.create(name: 'Add Gloss', price: 40, salon_id: salon7.id)


Service.create(name: 'Haircut', price: 800, salon_id: salon8.id)
Service.create(name: 'Custom Color', price: 600, salon_id: salon8.id)
Service.create(name: 'Keratin Smoothing', price: 350, salon_id: salon8.id)
Service.create(name: 'Silk Press', price: 100, salon_id: salon8.id)
Service.create(name: 'Wash & Go', price: 100, salon_id: salon8.id)
Service.create(name: 'Keratin Hair Peptide Treatment (Add on)', price: 25, salon_id: salon8.id)
Service.create(name: 'Botanical Therapy Treatment (Add on)', price: 25, salon_id: salon8.id)
Service.create(name: 'Custom Color with K18 Silk Press (coily hair)', price: 100, salon_id: salon8.id)
Service.create(name: 'Cut, scalp massage, blow-dry, stlying', price: 75, salon_id: salon8.id)


Service.create(name: 'Barber Cuts', price: 58, salon_id: salon9.id)
Service.create(name: 'Short/Pixie Cuts', price: 79, salon_id: salon9.id)
Service.create(name: 'Advanced Cuts', price: 99, salon_id: salon9.id)
Service.create(name: 'Glossing Treatments w/o blowout', price: 39, salon_id: salon9.id)
Service.create(name: 'Glossing Treatments w blowout', price: 71, salon_id: salon9.id)
Service.create(name: 'Keratin Smoothing Treatment', price: 302, salon_id: salon9.id)
Service.create(name: 'The American Wave (perm)', price: 400, salon_id: salon9.id)
Service.create(name: 'Revitalizing Treatments', price: 39, salon_id: salon9.id)
Service.create(name: 'Single panel Highlight', price: 102, salon_id: salon9.id)
Service.create(name: 'Half Head Highlight', price: 172, salon_id: salon9.id)
Service.create(name: 'Full Head Highlight', price: 212, salon_id: salon9.id)


# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon4.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon4.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon6.id)
# Service.create(name: '', price: , salon_id: salon4.id)

puts 'Creating Appointment...🗓'
Appointment.create(date: '2021-08-25' , start_time: '10:30', end_time: '11:30', description: "Need a blowout", user_id: user1.id, salon_id: salon1.id)
Appointment.create(date: '2021-08-27', start_time: '1:30', end_time: '2:30', description: "Need a cut", user_id: user2.id, salon_id: salon2.id)

puts 'Creating Review...📝'
review1 = Review.create(
    rating: 5, 
    comment: 'The cozy space is all exposed brick and oversized mirrors, and she’s always got R&B jams playing. This spot specializes in silk presses — look on any stylist’s station and you’ll see a flat iron and hot comb laid side by side — and weave installations. Ursula is also a master at cuts. She can give you anything, from a blunt bob to a textured pixie and even feathery layers.', 
    salon_id: salon1.id, 
    user_id: user1.id
    )

review1.review_photo.attach(
    io: File.open('./public/review_photos/hair-pic.jpeg'),
    filename: 'hair-pic.jpeg', 
    content_type: 'application/jpeg'
)

review2 = Review.create(
    rating: 4, 
    comment: "I discovered Reece from a friend of mine who worked with her for an editorial piece. I have a head of barely-there tapered curls that I adore and a hairstylist I feel 100% comfortable trying new things with. Not only does Reece know how to care for curls, she also knows how to make her clients fall in love with their hair.", 
    salon_id: salon1.id, 
    user_id: user1.id
    )
    
review2.review_photo.attach(
    io: File.open('./public/review_photos/hair-pic.jpeg'),
    filename: 'hair-pic.jpeg', 
    content_type: 'application/jpeg'
)

review3 = Review.create(
    rating: 5, 
    comment: "Candace starts off each appointment with a consultation to get an idea of what you want, and she'll give you her honest opinion on what may (or may not) work with your texture. She's trained in cutting curly hair so that the shape is tailored specifically to your face and style. I’ve left every appointment satisfied with my bouncy, healthy curls.", 
    salon_id: salon3.id, 
    user_id: user2.id
    )

review3.review_photo.attach(
    io: File.open('./public/review_photos/hair-pic.jpeg'),
    filename: 'hair-pic.jpeg', 
    content_type: 'application/jpeg'
)

review4 = Review.create(
    rating: 5, 
    comment: "Mona speaks to you beforehand so that you're both on the same page before the scissors come out. I never wondered, 'Omg, what is she doing now?' Overall, she gave me exactly what I was looking for. She even followed up with me and messaged me on Instagram after the haircut to see how I was adjusting to my new look. Now, I can't imagine going anywhere else.", 
    salon_id: salon4.id, 
    user_id: user3.id
    )
    
review4.review_photo.attach(
    io: File.open('./public/review_photos/hair-pic.jpeg'),
    filename: 'hair-pic.jpeg', 
    content_type: 'application/jpeg'
)
    review5 = Review.create(
        rating: 5, 
        comment: "I found Jaxcee on Instagram and saw that she frequently colors curls, so I took a chance. Jackie took my jet-black hair to a warm blonde shade in two sessions. I loved my hair, and I haven't experienced any damage or breakage since my appointment. My color looks extremely natural and there are no harsh lines. If Jaxcee's doing your color, know that your curls are in good hands.", 
        salon_id: salon5.id, 
        user_id: user1.id
        )
    review5.review_photo.attach(
        io: File.open('./public/review_photos/hair-pic.jpeg'),
        filename: 'hair-pic.jpeg', 
        content_type: 'application/jpeg'
    )

    review6 = Review.create(
        rating: 5, 
        comment: "Sitting in her chair felt like being around an old friend. She has such an amazing soul and, not to mention, she's super talented with curly hair. It's going on 3 years now that I've been going to 5 Salon and Spa, and I will forever be a loyal client.", 
        salon_id: salon6.id, 
        user_id: user2.id
        )
    review6.review_photo.attach(
        io: File.open('./public/review_photos/hair-pic.jpeg'),
        filename: 'hair-pic.jpeg', 
        content_type: 'application/jpeg'
    )
            
    review7 = Review.create(
        rating: 4, 
        comment: "One of the best salons in town and it's stuck around for a reason. Has a welcoming ambiance.", 
        salon_id: salon7.id, 
        user_id: user3.id
        )
    review7.review_photo.attach(
        io: File.open('./public/review_photos/hair-pic.jpeg'),
        filename: 'hair-pic.jpeg', 
        content_type: 'application/jpeg'
    )
                
    review8 = Review.create(
        rating: 5, 
        comment: "At Spoke & Weal Soho, you don’t tell Master Stylist Kelsy Osterman the exact length you’re going for—she lets your hair's natural texture dictate that for you instead.  Best hair makeover!", 
        salon_id: salon8.id, 
        user_id: user4.id
    )
    review8.review_photo.attach(
        io: File.open('./public/review_photos/hair-pic.jpeg'),
        filename: 'hair-pic.jpeg', 
        content_type: 'application/jpeg'
    )
    
    review9 = Review.create(
        rating: 3, 
        comment: "F&J embraces fun and community and prioritizes salon culture. We love that their pricing is uniquely based on hair length and service difficulty (rather than gender).", 
        salon_id: salon9.id, 
        user_id: user3.id
        )
        
    review9.review_photo.attach(
        io: File.open('./public/review_photos/hair-pic.jpeg'),
        filename: 'hair-pic.jpeg', 
        content_type: 'application/jpeg'
    )