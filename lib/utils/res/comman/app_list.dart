import 'package:wakeup_web/features/our%20services/models/service_model.dart';

class AppList {
  static List<Service> digitalMarketingServices = [
    Service(
      'Social Media Marketing',
      'Engage with your audience on social platforms. Utilize various social media platforms such as Facebook, Twitter, Instagram, and LinkedIn to connect with your target audience, build brand awareness, and drive engagement.',
      false,
    ),
    Service(
      'Search Engine Optimization (SEO)',
      'Improve your website visibility on search engines. Optimize your website\'s content, structure, and performance to rank higher in organic search results and attract more organic traffic.',
      false,
    ),
    Service(
      'Content Marketing',
      'Create and distribute valuable content to attract customers. Develop and share informative, entertaining, and engaging content such as blog posts, articles, videos, and infographics to educate and entertain your audience while subtly promoting your products or services.',
      false,
    ),
    Service(
      'Email Marketing',
      'Reach out to potential customers through targeted email campaigns. Build and maintain an email list of subscribers interested in your products or services, and send them personalized and relevant email messages to nurture leads, drive sales, and build customer loyalty.',
      false,
    ),
    Service(
      'Influencer Marketing',
      'Leverage influential individuals to promote your brand or product. Identify and collaborate with social media influencers, bloggers, and content creators who have a large and engaged following in your niche to endorse your products or services and reach a wider audience.',
      false,
    ),
    Service(
      'Pay-Per-Click (PPC) Advertising',
      'Drive traffic to your website through paid advertising campaigns. Create and manage PPC campaigns on platforms such as Google Ads and Bing Ads, targeting specific keywords, demographics, and interests to attract qualified leads and increase conversions.',
      false,
    ),
  ];

  static List<Service> softwareDevelopmentServices = [
    Service(
      'Mobile App Development',
      'Create custom mobile applications for iOS and Android. Design and develop native or cross-platform mobile apps tailored to your specific requirements and target audience, leveraging the latest technologies and best practices to deliver seamless user experiences.',
      false,
    ),
    Service(
      'Web Development',
      'Build responsive and interactive websites. Develop dynamic and user-friendly websites using modern web technologies such as HTML, CSS, JavaScript, and frameworks like React, Angular, or Vue.js, ensuring compatibility across various devices and browsers.',
      false,
    ),
    Service(
      'UI/UX Design',
      'Craft intuitive and user-friendly interfaces. Create visually appealing and intuitive user interfaces (UI) and optimize user experiences (UX) to enhance usability, accessibility, and satisfaction, conducting user research, prototyping, and testing to ensure design effectiveness.',
      false,
    ),
    Service(
      'Backend Development',
      'Develop server-side logic and databases for web applications. Design and implement scalable and secure backend systems, APIs, and databases using programming languages like Python, Node.js, or Java, along with frameworks like Django, Express, or Spring Boot.',
      false,
    ),
    Service(
      'Quality Assurance (QA)',
      'Ensure the quality and reliability of software products through testing. Plan, execute, and automate comprehensive testing processes, including functional testing, regression testing, performance testing, and user acceptance testing, to identify and address defects and ensure product quality.',
      false,
    ),
    Service(
      'DevOps Solutions',
      'Implement practices to streamline software development and deployment processes. Adopt DevOps methodologies and tools to automate build, testing, deployment, and monitoring processes, fostering collaboration between development and operations teams and enabling faster and more reliable software delivery.',
      false,
    ),
  ];

  // we help
 static List wehelp = [
    [
      "Startups",
      "To validate their idea, make an MVP and grow it into a commercial product.",
      "PRODUCT LAUNCH",
    ],
    [
      "Enterprises",
      "To update legacy software and connect all the processes into a unified ecosystem.",
      "SYSTEM MODERNIZATION",
    ],
    [
      "SMBs",
      "To spread their services through custom software solutions and establish user loyalty.",
      "BUSINESS GROWTH",
    ],
    [
      "Organizations",
      "To make a momentous move into digitalization and build a global community.",
      "SOCIAL RESPONSIBILITY",
    ],
  ];

  static List<AppTestimonial> appTestimonial = [
    AppTestimonial(
      "John Doe",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod magna vel tellus efficitur, vitae commodo nulla tristique. Nulla facilisi.",
      "CEO",
    ),
    AppTestimonial(
      "Jane Smith",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod magna vel tellus efficitur, vitae commodo nulla tristique. Nulla facilisi.",
      "CTO",
    ),
    AppTestimonial(
      "Mark Johnson",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod magna vel tellus efficitur, vitae commodo nulla tristique. Nulla facilisi.",
      "CFO",
    ),
    AppTestimonial(
      "Sara Davis",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod magna vel tellus efficitur, vitae commodo nulla tristique. Nulla facilisi.",
      "COO",
    ),
    AppTestimonial(
      "Michael Brown",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod magna vel tellus efficitur, vitae commodo nulla tristique. Nulla facilisi.",      
      "CIO",), ];


     static List<ServiceModel> services = [
      ServiceModel(
        title: "Design & Creative.",
        subPoints: [
          "UI/UX Design",
          "Web Design",
          "Print Design",
          "Digital Design",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Branding.",
        subPoints: [
          "Logo",
          "Brand Guide",
          "Memorable Brand Design Strategy",
          "Social Identity",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Web Development.",
        subPoints: [
          "Frontend Development",
          "Backend Development",
          "API Integration",
          "Responsive Design",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "App Development.",
        subPoints: [
          "iOS App Development",
          "Android App Development",
          "Cross-Platform Solutions",
          "App Store Deployment",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Growth Marketing.",
        subPoints: [
          "Content Marketing",
          "Email Marketing",
          "Search Engine Optimization",
          "Pay-Per-Click",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Social Marketing.",
        subPoints: [
          "Social Media Strategy",
          "Social Media Advertising",
          "Social Media Management",
          "Influencer Marketing",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Performance Marketing.",
        subPoints: [
          "Conversion Rate Optimization",
          "Affiliate Marketing",
          "Search Engine Marketing",
          "Retargeting",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Photography & Videography.",
        subPoints: [
          "Product Photography",
          "Portrait Photography",
          "Wedding Photography",
          "Event Photography",
        ],
        onTap: () {},
      ),
    ];

}

class Service {
  final String heading;
  final String subHeading;
  bool isHovered;

  Service(
    this.heading,
    this.subHeading,
    this.isHovered,
  );
}


class AppTestimonial {
  final String name;
  final String quote;
  final String heading;

  AppTestimonial(this.name, this.quote, this.heading);
}