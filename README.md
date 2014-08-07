#applog
Tracking which apps you use all day every day!
This is intended to be something similar to https://github.com/jradavenport/batlog but for application usage rather than battery usage.

#Install guide
```bash
git clone https://github.com/AshyIsMe/applog
cd applog
./install.sh
```

#Usage
Writes the date, application name and window title to ~/applog.dat in plaintext every second.
Later you can graph this data with whatever tool you like to gain some insight into your computer usage patterns.
See http://www.ifweassume.com/2014/07/better-living-through-data.html for inspiration.

#File format
applog.dat is stored in your home directory and is just a csv file:
<date>,<application name>,<window title>


#TODO
- Move the file somewhere better.
- Periodically compress the files as they'll grow fairly quickly and have a lot of redundancy









                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
