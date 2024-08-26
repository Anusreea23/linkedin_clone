import 'package:linkedin_clone/model/user_model/user_model.dart';
import 'package:linkedin_clone/model/user_post/user_post_model.dart';

class Dummydb {
  static final List<Map> postlist = [
    {
      "name": "Jane Doe",
      "profileUrl":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=300",
      "headline": "Exploring the Wonders of Nature",
      "tags": "#Nature #Adventure #Travel",
      "description":
          "Join me as I explore the most beautiful landscapes and natural wonders around the world.",
      "videos": "",
      "images":
          "https://images.pexels.com/photos/636243/pexels-photo-636243.jpeg?auto=compress&cs=tinysrgb&w=300",
    },
  ];
  static final List<Map> postinteractionlist = [
    {"comments": "35 comments", "likes": "120", "reposts": "89 reposts"}
  ];

  static final List<Map> postlist2 = [
    {
      "name": "Alice Johnson",
      "company": "Luminar Technolab",
      "headline": "Software Engineer at TechCorp at Luminar Technolab",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
    {
      "name": "Bob Smith",
      "company": "Google",
      "headline": "Senior Developer at Google, focusing on building solutions.",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
    {
      "name": "Kurt Mitchell",
      "company": "Oracle",
      "headline": "Experienced Software Engineer working at TechCorp.",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
    {
      "name": "Isaac Brown",
      "company": "IBM",
      "headline":
          "AI Researcher at IBM, focusing on advancing artificial intelligence.",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
    {
      "name": "Judy Wilson",
      "company": "Adobe",
      "headline": "Creative Director at Adobe, leading a team in development.",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
    {
      "name": "David Wilson",
      "company": "Apple",
      "headline":
          "UX Designer at Apple, dedicated to creating exceptional user .",
      "profileUrl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    },
  ];

  static final List<Map> catchupdata = [
    {
      "profileurl": "https://example.com/profile/alicejohnson",
      "name": "Alice Johnson",
      "message": "Excited for the next challenge!",
      "date": "jul 5",
      "count": "3",
    },
    {
      "profileurl": "https://example.com/profile/bobsmith",
      "name": "Bob Smith",
      "message": "It’s a game-changer!",
      "date": "jul 16 ",
      "count": "5",
    },
    {
      "profileurl": "https://example.com/profile/caroldavis",
      "name": "Carol Davis",
      "message": " Great ideas ahead!",
      "date": "Aug 5",
      "count": "2",
    },
    {
      "profileurl": "https://example.com/profile/davidwilson",
      "name": "David Wilson",
      "message": "we’ve been working on at Apple.",
      "date": "Aug15",
      "count": "4",
    },
    {
      "profileurl": "https://example.com/profile/eveclark",
      "name": "Eve Clark",
      "message": "hey! Looking forward to diving into new datasets!",
      "date": "jan 12",
      "count": "1",
    },
  ];
  static final List<Map> notificationlist = [
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions":
          "peoplw with similar interest are following sachin Tendulkar",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Alice liked your post.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Charlie commented on your photo.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "247 people attending an event created by Git",
      "data": "dex nova learning",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "jgkjgtjrpovbvhnhjgkjfhbkjglgljjgxcsgfxgfsavcjfkgklb",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "David shared your video.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Eve mentioned you in a comment.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Frank started following you.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Grace liked your comment.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27596282/pexels-photo-27596282/free-photo-of-a-woman-standing-on-top-of-a-circular-platform.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "descriptions": "Jack started a new chat with you.",
      "data": "Indian,Cricketer,Mentor,Change-maker",
    },
  ];
  static final List<Map> videoscreen = [
    {
      "profileurl":
          "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "imageurl":
          "https://images.pexels.com/photos/26832674/pexels-photo-26832674/free-photo-of-swa-view-photo-print.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "name": "Richa Valecha",
      "profile": "Hacking around",
      "description":
          "Scientists have discovered a molecular motor inside bacteria that looks exactly like the electric motor.",
      "likes": "2.5k",
      "comments": "26",
      "shares": "58",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "imageurl":
          "https://images.pexels.com/photos/26832674/pexels-photo-26832674/free-photo-of-swa-view-photo-print.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "name": "Richa Valecha",
      "profile": "Hacking around",
      "description":
          "Scientists have discovered a molecular motor inside bacteria that looks exactly like the electric motor.",
      "likes": "2.5k",
      "comments": "26",
      "shares": "58",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "imageurl":
          "https://images.pexels.com/photos/26832674/pexels-photo-26832674/free-photo-of-swa-view-photo-print.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "name": "Richa Valecha",
      "profile": "Hacking around",
      "description":
          "Scientists have discovered a molecular motor inside bacteria that looks exactly like the electric motor.",
      "likes": "2.5k",
      "comments": "26",
      "shares": "58",
    },
    {
      "profileurl":
          "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "imageurl":
          "https://images.pexels.com/photos/26832674/pexels-photo-26832674/free-photo-of-swa-view-photo-print.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "name": "Richa Valecha",
      "profile": "Hacking around",
      "description":
          "Scientists have discovered a molecular motor inside bacteria that looks exactly like the electric motor.",
      "likes": "2.5k",
      "comments": "26",
      "shares": "58",
    }
  ];
  static final List<Map> jobdata = [
    {
      "imageurl": "https://example.com/image1.jpg",
      "jobname": "Software Developer",
      "company": "TechCorp",
      "location": "San Francisco, CA",
    },
    {
      "imageurl": "https://example.com/image2.jpg",
      "jobname": "Systems Analyst",
      "company": "Innovate Inc.",
      "location": "New York, NY",
    },
    {
      "imageurl": "https://example.com/image3.jpg",
      "jobname": "Network Engineer",
      "company": "NetWorks",
      "location": "Chicago, IL",
    },
    {
      "imageurl": "https://example.com/image4.jpg",
      "jobname": "Cybersecurity Specialist",
      "company": "SecureTech",
      "location": "Austin, TX",
    },
    {
      "imageurl": "https://example.com/image5.jpg",
      "jobname": "Database Administrator",
      "company": "DataExperts",
      "location": "Seattle, WA",
    },
    {
      "imageurl": "https://example.com/image6.jpg",
      "jobname": "UI/UX Designer",
      "company": "DesignHub",
      "location": "Boston, MA",
    },
    {
      "imageurl": "https://example.com/image7.jpg",
      "jobname": "IT Support Specialist",
      "company": "HelpDesk Solutions",
      "location": "Los Angeles, CA",
    },
    {
      "imageurl": "https://example.com/image8.jpg",
      "jobname": "Cloud Engineer",
      "company": "Cloudify",
      "location": "Denver, CO",
    },
    {
      "imageurl": "https://example.com/image9.jpg",
      "jobname": "DevOps Engineer",
      "company": "OpsWorks",
      "location": "Atlanta, GA",
    },
    {
      "imageurl": "https://example.com/image10.jpg",
      "jobname": "Business Intelligence Analyst",
      "company": "Insight Analytics",
      "location": "Philadelphia, PA",
    },
  ];
}
