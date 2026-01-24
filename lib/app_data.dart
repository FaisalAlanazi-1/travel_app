import 'package:travel_app/models/Category.dart';
import 'package:travel_app/models/trip.dart';

const categoriesData = [
  Category(
    id: 'c1',
    title: 'جبال',
    imageUrl:
        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ),
  Category(
    id: 'c2',
    title: 'واحات',
    imageUrl:
        'https://images.unsplash.com/photo-1451337516015-6b6e9a44a8a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
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
        'https://images.unsplash.com/photo-1549924231-f129b911e442?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
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
    title: 'جبال الحجر - عمان',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1512553353614-82a7370096dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
    categories: ['c2', 'c4'],
    title: 'واحة الأحساء - السعودية',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1451337516015-6b6e9a44a8a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1547036967-23d11aacaee0?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
    title: 'وادي بني خالد - عمان',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 12,
    activities: [
      'السباحة في البرك الطبيعية',
      'استكشاف الكهوف',
      'المشي في الوادي',
      'التنزه العائلي',
      'التصوير الطبيعي'
    ],
    program: [
      'الوصول إلى الوادي والاستمتاع بالمياه الفيروزية النقية',
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
    title: 'شاطئ الممزر - دبي',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
    title: 'شاطئ السيف - الكويت',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
    title: 'شاطئ كتارا - قطر',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1559827260-dc66d52bef19?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1509316785289-025f5b846b35?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1565092768028-4ccf5f7e6c58?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1549924231-f129b911e442?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
        'https://images.unsplash.com/photo-1512632578888-169bbbc64f33?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
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
    id: 'm15',
    categories: ['c5'],
    title: 'مدينة مسقط القديمة - عمان',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 22,
    activities: [
      'زيارة قصر العلم السلطاني',
      'استكشاف الحصون التاريخية',
      'جولة في سوق مطرح',
      'زيارة المساجد الأثرية',
      'التسوق في الأسواق التقليدية'
    ],
    program: [
      'بداية الجولة بزيارة قصر العلم السلطاني',
      'استكشاف حصن الجلالي والميراني',
      'جولة في مدينة مسقط القديمة والأسواق التقليدية',
      'زيارة جامع السلطان قابوس الأكبر',
      'جولة في سوق مطرح التقليدي',
      'تناول عشاء عماني في مطعم تراثي'
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
  Trip(
    id: 'm17',
    categories: ['c6'],
    title: 'مهرجان الجنادرية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 15,
    activities: [
      'مشاهدة سباق الهجن',
      'زيارة الأجنحة التراثية',
      'حضور العروض الشعبية',
      'تذوق الأطعمة التقليدية',
      'شراء الحرف اليدوية'
    ],
    program: [
      'زيارة مهرجان الجنادرية للتراث والثقافة',
      'مشاهدة سباقات الهجن والخيل المثيرة',
      'جولة في أجنحة المناطق وتجربة الأطعمة المحلية',
      'حضور العروض الفنية والرقصات الشعبية',
      'التسوق في السوق الشعبي وشراء الهدايا التذكارية',
      'تناول عشاء تقليدي في خيمة المهرجان'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
];