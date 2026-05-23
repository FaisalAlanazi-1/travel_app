import 'package:travel_app/models/Category.dart';
import 'package:travel_app/models/trip.dart';

const categoriesData = [
  Category(
    id: 'c1',
    title: 'جبال',
    imageUrl:
        'https://vid.alarabiya.net/images/2020/07/27/8808ecd5-377d-4f81-bfb5-ae131c5fdbf8/8808ecd5-377d-4f81-bfb5-ae131c5fdbf8.jpg?width=801',
  ),
  Category(
    id: 'c2',
    title: 'واحات',
    imageUrl:
        'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1200,c_scale,q_auto/cnnarabic/2020/06/21/images/157916.avif',
  ),
  Category(
    id: 'c3',
    title: 'شواطىء',
    imageUrl:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ),
  Category(
    id: 'c4',
    title: 'صحارى',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ),
  Category(
    id: 'c5',
    title: 'مدن تاريخية',
    imageUrl:
        'https://destinationksa.com/wp-content/uploads/content/%D8%A3%D9%85%D8%A7%D9%83%D9%86-%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%D9%8A%D8%A9-%D9%81%D9%8A-%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9-4-1.jpg',
  ),
  Category(
    id: 'c6',
    title: 'أخرى',
    imageUrl:
        'https://images.unsplash.com/photo-1544551763-46a013bb70d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: ['c1'],
    title: 'الجبل الأخضر - عمان',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/36/af/e0/the-jebel-akhar-is-part.jpg?w=700&h=400&s=1',
    duration: 20,
    activities: [
      'رحلات المشي في الجبال',
      'زيارة القرى التراثية',
      'تصوير المناظر الطبيعية',
      'استكشاف الوديان',
      'تسلق الجبال'
    ],
    program: [
      'الانطلاق صباحاً نحو جبال الحجر واستكشاف القمم الشاهقة',
      'زيارة القرى الجبلية التقليدية والتعرف على نمط الحياة المحلي',
      'جولة في الوديان الخضراء والاستمتاع بالطبيعة الخلابة',
      'تناول وجبة غداء تقليدية في أحد المطاعم الجبلية',
      'التقاط صور بانورامية من أعلى القمم',
      'العودة مساءً بعد تجربة استثنائية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: ['c1'],
    title: 'جبل شمس - عمان',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/12/00/6a/dsc02280-2-largejpg.jpg?w=700&h=400&s=1',
    duration: 15,
    activities: [
      'مشاهدة شروق الشمس',
      'زيارة الأخدود العميق',
      'رحلات التخييم',
      'التصوير الفوتوغرافي',
      'استكشاف الكهوف'
    ],
    program: [
      'الانطلاق فجراً لمشاهدة شروق الشمس من أعلى قمة في عمان',
      'زيارة الأخدود العميق والاستمتاع بالمناظر المذهلة',
      'جولة استكشافية في المسارات الجبلية',
      'تناول وجبة فطور تقليدية مع إطلالة جبلية ساحرة'
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm3',
    categories: ['c1'],
    title: 'جبال فيفا - السعودية',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/3/34/%D8%AC%D8%A8%D8%A7%D9%84_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%81%D9%8A%D9%81%D8%A7_%D8%A8%D9%85%D9%86%D8%B7%D9%82%D8%A9_%D8%AC%D8%A7%D8%B2%D8%A7%D9%86_%D8%AC%D9%86%D9%88%D8%A8_%D8%BA%D8%B1%D8%A8%D9%8A_%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9_%282025%29.jpg',
    duration: 25,
    activities: [
      'استكشاف المدرجات الزراعية',
      'زيارة القرى الجبلية',
      'التعرف على الثقافة المحلية',
      'تذوق المأكولات التقليدية',
      'جولات المشي'
    ],
    program: [
      'جولة في الجبال الخضراء والمدرجات الزراعية الفريدة',
      'زيارة القرى التراثية المعلقة على سفوح الجبال',
      'التعرف على طرق الزراعة التقليدية وأنواع المحاصيل',
      'تناول وجبة غداء من المنتجات المحلية الطازجة'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: ['c2'],
    title: 'واحة الأحساء - السعودية',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://www.visitsaudi.com/content/dam/wvs/destinations/al-ahsa/alahsa-oasis.jpg',
    duration: 30,
    activities: [
      'زيارة مزارع النخيل',
      'استكشاف العيون الطبيعية',
      'جولة في السوق التقليدي',
      'زيارة القصور التاريخية',
      'تذوق التمور المحلية'
    ],
    program: [
      'جولة صباحية في أكبر واحة نخيل في العالم',
      'زيارة العيون الطبيعية والينابيع الدافئة',
      'استكشاف السوق التقليدي (القيصرية) والحرف اليدوية',
      'زيارة قصر إبراهيم التاريخي والتعرف على تاريخ المنطقة'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: ['c2'],
    title: 'واحة ليوا - الإمارات',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Canal_-_panoramio_%2817%29.jpg/330px-Canal_-_panoramio_%2817%29.jpg',
    duration: 20,
    activities: [
      'رحلات السفاري الصحراوية',
      'زيارة المزارع التقليدية',
      'ركوب الجمال',
      'تجربة الطعام البدوي',
      'مشاهدة النجوم ليلاً'
    ],
    program: [
      'استكشاف واحة ليوا الخضراء وسط الكثبان الرملية',
      'جولة في المزارع التقليدية ومزارع التمور',
      'تجربة ركوب الجمال في الصحراء المحيطة',
      'تناول عشاء بدوي تقليدي تحت النجوم'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: ['c2'],
    title: 'واحة بهلاء - عمان',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://static.hiamag.com/styles/autox754/public/2013/03/%D9%88%D8%A7%D8%AD%D8%A9-%D8%A8%D9%87%D9%84%D8%A7%D8%A1.jpg',
    duration: 12,
    activities: [
      'السباحة في البرك الطبيعية',
      'استكشاف الكهوف',
      'المشي في الوادي',
      'التنزه العائلي',
      'التصوير الطبيعي'
    ],
    program: [
      'الوصول إلى الواحة والاستمتاع بالمياه الفيروزية النقية',
      'السباحة في البرك الطبيعية المحاطة بالنخيل',
      'استكشاف الكهوف المائية الرائعة',
      'تناول وجبة غداء خفيفة على ضفاف الوادي'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: ['c3'],
    title: ' البحر الأحمر - السعودية',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://www.visitsaudi.com/content/dam/wvs/stories/Red-sea-two.jpg',
    duration: 15,
    activities: [
      'السباحة في البحر',
      'الرياضات المائية',
      'الشواء والتنزه',
      'ألعاب الأطفال',
      'ركوب الدراجات'
    ],
    program: [
      'صباح ممتع على شاطئ الممزر الجميل',
      'ممارسة الرياضات المائية والسباحة',
      'إقامة حفل شواء عائلي مع المرافق المتاحة',
      'الاستمتاع بالألعاب المائية والأنشطة الترفيهية'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm8',
    categories: ['c3'],
    title:   'شاطئ الفويرط - قطر',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/5d/c7/d0/caption.jpg?w=700&h=400&s=1',
    duration: 10,
    activities: [
      'المشي على الكورنيش',
      'ركوب الدراجات',
      'زيارة المطاعم البحرية',
      'مشاهدة غروب الشمس',
      'التصوير'
    ],
    program: [
      'نزهة مسائية على كورنيش السيف',
      'ركوب الدراجات على الممر المخصص',
      'زيارة أحد المطاعم المطلة على البحر',
      'مشاهدة غروب الشمس الساحر مع أبراج الكويت في الخلفية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: ['c3'],
    title: 'شاطئ الغارية - قطر',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/6b/eb/54/very-clean-beach-and.jpg?w=700&h=400&s=1',
    duration: 18,
    activities: [
      'السباحة والرياضات المائية',
      'زيارة القرية الثقافية',
      'حضور الفعاليات الفنية',
      'تناول الطعام في المطاعم الفاخرة',
      'التسوق في الأسواق التقليدية'
    ],
    program: [
      'يوم كامل في شاطئ كتارا الجميل',
      'زيارة القرية الثقافية والتعرف على الفنون',
      'جولة في السوق التقليدي والمحلات الحرفية',
      'تناول عشاء فاخر في أحد مطاعم كتارا المميزة'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: ['c4'],
    title: 'الربع الخالي - السعودية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://destinationksa.com/wp-content/uploads/content/%D8%B5%D8%AD%D8%B1%D8%A7%D8%A1-%D8%A7%D9%84%D8%B1%D8%A8%D8%B9-%D8%A7%D9%84%D8%AE%D8%A7%D9%84%D9%8A-5.webp',
    duration: 35,
    activities: [
      'رحلات السفاري بالدفع الرباعي',
      'التخييم الصحراوي',
      'مشاهدة النجوم',
      'ركوب الجمال',
      'تجربة الحياة البدوية'
    ],
    program: [
      'رحلة استكشافية في أكبر صحراء رملية متصلة في العالم',
      'جولة بالسيارات رباعية الدفع بين الكثبان الرملية الضخمة',
      'إقامة مخيم صحراوي فاخر مع كافة المرافق',
      'تناول عشاء بدوي تقليدي حول النار',
      'مشاهدة النجوم في سماء صافية بعيداً عن أضواء المدن',
      'تجربة ركوب الجمال والتصوير في الكثبان الذهبية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: ['c4'],
    title: 'صحراء وهيبة - عمان',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThbzDcVoPEFMwt1vo1NKQlWx7C80Jl4QpopUqq2mGcPiQQrGhlKA_03ZaM0Q4scJ2TQJGACc6p1uGaSzYK98tm9TfHHVgX_fv3nWl0oBAX&s=10',
    duration: 25,
    activities: [
      'ركوب الكثبان الرملية',
      'زيارة البدو الرحل',
      'التخييم التقليدي',
      'مشاهدة شروق الشمس',
      'رحلات السفاري'
    ],
    program: [
      'رحلة صباحية إلى صحراء وهيبة الشهيرة',
      'تجربة ركوب الكثبان الرملية العالية',
      'زيارة عائلة بدوية والتعرف على نمط حياتهم',
      'تناول غداء بدوي تقليدي في خيمة',
      'مشاهدة غروب الشمس الخلاب من قمة الكثبان',
      'قضاء ليلة في مخيم صحراوي مريح'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: ['c4'],
    title: 'صحراء العُديد - قطر',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://explore.rehlat.ae/static/media/searchdestination/thingstodo/images/mesaieed/khor_al_udaid_beach/Khor_Al_Udaid_Beach.webp',
    duration: 20,
    activities: [
      'ركوب الكثبان الرملية',
      'زيارة البحر الداخلي (خور العديد)',
      'ركوب الجمال',
      'التخييم الفاخر',
      'الرياضات الصحراوية'
    ],
    program: [
      'رحلة مثيرة إلى صحراء العديد الخلابة',
      'تجربة ركوب الكثبان الرملية العالية',
      'زيارة البحر الداخلي الفريد (خور العديد)',
      'تناول غداء بدوي فاخر في المخيم',
      'جولة بالجمال عند غروب الشمس',
      'أمسية تقليدية مع الموسيقى والرقصات الشعبية'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: ['c5'],
    title: 'الدرعية التاريخية - السعودية',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/At-Turaif_District_of_Diriyah%2C_Saudi_Arabia.jpg/1920px-At-Turaif_District_of_Diriyah%2C_Saudi_Arabia.jpg',
    duration: 18,
    activities: [
      'زيارة حي الطريف التاريخي',
      'جولة في المتحف الوطني',
      'التعرف على تاريخ الدولة السعودية',
      'التصوير في المباني الطينية',
      'حضور العروض الثقافية'
    ],
    program: [
      'جولة صباحية في حي الطريف أحد مواقع التراث العالمي',
      'زيارة قصر سلوى ومشاهدة العمارة النجدية الأصيلة',
      'التعرف على تاريخ الدولة السعودية الأولى',
      'تناول غداء في أحد المطاعم التراثية',
      'جولة في السوق التقليدي وشراء الحرف اليدوية',
      'حضور عرض ثقافي في المساء'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: ['c5'],
    title: 'حي البستكية - دبي',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/9/95/Camello_y_campamento%2C_Al_Bastakiya%2C_Dubai%2C_2009-11-23%2C_DD_8878.jpg',
    duration: 12,
    activities: [
      'جولة في الحي التاريخي',
      'زيارة المتاحف',
      'التسوق في السوق التقليدي',
      'ركوب العبرة',
      'تذوق الأطعمة الإماراتية'
    ],
    program: [
      'نزهة صباحية في حي البستكية التراثي',
      'زيارة بيت الشيخ محمد ومتحف دبي',
      'جولة في أزقة الحي القديم وبراجيل الهواء',
      'ركوب العبرة التقليدية في خور دبي',
      'زيارة سوق الذهب والتوابل',
      'تناول غداء إماراتي تقليدي'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  
  Trip(
    id: 'm16',
    categories: ['c6'],
    title: 'رحلة بحرية في الخليج',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1544551763-46a013bb70d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 25,
    activities: [
      'رحلة باليخت',
      'صيد الأسماك',
      'الغوص والسباحة',
      'مشاهدة الدلافين',
      'الشواء على متن اليخت'
    ],
    program: [
      'الانطلاق صباحاً في رحلة بحرية فاخرة',
      'تجربة صيد الأسماك مع معدات متكاملة',
      'الغوص والسباحة في المياه الصافية',
      'مشاهدة الدلافين والحياة البحرية',
      'تناول وجبة غداء من المأكولات البحرية الطازجة',
      'العودة مع غروب الشمس الساحر'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  
];