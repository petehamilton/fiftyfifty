Fifty Fifty API Gem
======

What is it?
-----------
A Gem for interacting with the API for the 5050 project. Read more about the project [Here](http://http://www.5050.gd/)

Simple usage session example:

Set up

```ruby
ruby-1.9.2-p180 :001 > ff = FiftyFifty.new('XXXXXXXXXXXXXXXXXXXXXXXXXXX')
 => #<FiftyFifty:0x00000101f5f6e8 @api_key="XXXXXXXXXXXXXXXXXXXXXXXXXXX"> 
```

Play!

```ruby
ruby-1.9.2-p180 :002 > ff.statistics
 => <#Hashie::Mash backer_count=91 donation_count=69 donation_total=3319.2 project_count=11> 
ruby-1.9.2-p180 :003 > ff.statistics.project_count
 => 11 
ruby-1.9.2-p180 :004 > ff.projects.length
 => 11 
ruby-1.9.2-p180 :005 > ff.projects.map(&:title)
 => ["Give-a-gram", "The Fat Planner", "Facebook Famine", "Fight the Famine", "Hangouts for Charity", "#f*ckfamine SwearJar", "Toilet to Pocket", "4words", "Space for Change", "I give a buck, now you give a f**k!", "#AfricaNeedsYou"] 
ruby-1.9.2-p180 :006 > class Array; def mean; sum / size; end; end
 => nil 
ruby-1.9.2-p180 :007 > ff.project_donations(ff.projects[1].id).map(&:amount)
 => [2.0, 306.0, 10.0, 30.0, 2.0, 8.0, 25.0, 61.0, 61.2, 61.0, 20.0, 20.0, 100.0, 306.0, 30.0, 100.0, 10.0, 30.0, 12.0, 100.0, 18.0, 20.0, 5.0, 45.0, 10.0, 100.0, 12.0, 10.0, 609.0, 15.0, 60.0, 15.0, 30.0, 15.0, 182.0, 60.0, 60.0, 60.0, 82.0] 
ruby-1.9.2-p180 :008 > ff.project_donations(ff.projects[1].id).map(&:amount).mean.round(1)
 => 69.3 
ruby-1.9.2-p180 :009 > ff.campaigners.each do |c| puts "#{c.name} from (#{c.location})" end
Made by Many from (London, UK)
Public House from (Manchester, UK)
Alejandro Lozada from (Mexico City)
15 Million Elephants from (Colorado, USA)
Tom and Syd from (London & Winchester, UK)
Albion London from (London, UK)
Relax in the Air from (Switzerland)
Mint Digital from (London, UK)
Chameleon from (UK)
Unicef from (global)
Good for Nothing from (UK)
Victors & Spoils from (Colorado)
Arnold Worldwide from (Global)
The Social Practice from (London, UK)
She Says from (Global)
Independents United from (London, UK)
GFN collective from (UK)
For Love Not Money from (UK)
Because Studio from (UK)
Jack & Paul / Enjoythis from (UK)
Enjoythis from (UK)
Disrupt4Good from (London, UK)
```