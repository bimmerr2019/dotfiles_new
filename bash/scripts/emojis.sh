#!/usr/bin/env bash

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: -1}
      echo -n "$emoji" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoji copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoji: ' | bash $0 copy
    ;;
esac

exit

__DATA__
grinning face                                   π
smiling face with open mouth                    π
smiling face with open mouth & smiling eyes     π
grinning face with smiling eyes                 π
smiling face with open mouth & closed eyes      π
smiling face with open mouth & cold sweat       π
face with tears of joy                          π
rolling on the floor laughing                   π€£
smiling face                                   βΊοΈ
smiling face with smiling eyes                  π
smiling face with halo                          π
slightly smiling face                           π
upside-down face                                π
winking face                                    π
relieved face                                   π
smiling face with heart-eyes                    π
face blowing a kiss                             π
kissing face                                    π
kissing face with smiling eyes                  π
kissing face with closed eyes                   π
face savouring delicious food                   π
face with stuck-out tongue & winking eye        π
face with stuck-out tongue & closed eyes        π
face with stuck-out tongue                      π
money-mouth face                                π€
hugging face                                    π€
nerd face                                       π€
smiling face with sunglasses                    π
clown face                                      π€‘
cowboy hat face                                 π€ 
smirking face                                   π
unamused face                                   π
disappointed face                               π
pensive face                                    π
worried face                                    π
confused face                                   π
slightly frowning face                          π
frowning face                                  βΉοΈ
persevering face                                π£
confounded face                                 π
tired face                                      π«
weary face                                      π©
face with steam from nose                       π€
angry face                                      π 
pouting face                                    π‘
face without mouth                              πΆ
neutral face                                    π
expressionless face                             π
hushed face                                     π―
frowning face with open mouth                   π¦
anguished face                                  π§
face with open mouth                            π?
astonished face                                 π²
dizzy face                                      π΅
flushed face                                    π³
face screaming in fear                          π±
fearful face                                    π¨
face with open mouth & cold sweat               π°
crying face                                     π’
disappointed but relieved face                  π₯
drooling face                                   π€€
loudly crying face                              π­
face with cold sweat                            π
sleepy face                                     πͺ
sleeping face                                   π΄
face with rolling eyes                          π
thinking face                                   π€
lying face                                      π€₯
grimacing face                                  π¬
zipper-mouth face                               π€
nauseated face                                  π€’
sneezing face                                   π€§
face with medical mask                          π·
face with thermometer                           π€
face with head-bandage                          π€
smiling face with horns                         π
angry face with horns                           πΏ
ogre                                            πΉ
goblin                                          πΊ
pile of poo                                     π©
ghost                                           π»
skull                                           π
skull and crossbones                           β οΈ
alien                                           π½
alien monster                                   πΎ
robot face                                      π€
jack-o-lantern                                  π
smiling cat face with open mouth                πΊ
grinning cat face with smiling eyes             πΈ
cat face with tears of joy                      πΉ
smiling cat face with heart-eyes                π»
cat face with wry smile                         πΌ
kissing cat face with closed eyes               π½
weary cat face                                  π
crying cat face                                 πΏ
pouting cat face                                πΎ
open hands                                      π
raising hands                                   π
clapping hands                                  π
folded hands                                    π
handshake                                       π€
thumbs up                                       π
thumbs down                                     π
oncoming fist                                   π
raised fist                                     β
left-facing fist                                π€
right-facing fist                               π€
crossed fingers                                 π€
victory hand                                   βοΈ
sign of the horns                               π€
OK hand                                         π
backhand index pointing left                    π
backhand index pointing right                   π
backhand index pointing up                      π
backhand index pointing down                    π
index pointing up                              βοΈ
raised hand                                     β
raised back of hand                             π€
raised hand with fingers splayed                π
vulcan salute                                   π
waving hand                                     π
call me hand                                    π€
flexed biceps                                   πͺ
middle finger                                   π
writing hand                                   βοΈ
selfie                                          π€³
nail polish                                     π
ring                                            π
lipstick                                        π
kiss mark                                       π
mouth                                           π
tongue                                          π
ear                                             π
nose                                            π
footprints                                      π£
eye                                             π
eyes                                            π
speaking head                                   π£
bust in silhouette                              π€
busts in silhouette                             π₯
baby                                            πΆ
boy                                             π¦
girl                                            π§
man                                             π¨
woman                                           π©
blond-haired woman                            π±ββ
blond-haired person                             π±
old man                                         π΄
old woman                                       π΅
man with Chinese cap                            π²
woman wearing turban                          π³ββ
person wearing turban                           π³
woman police officer                          π?ββ
police officer                                  π?
woman construction worker                     π·ββ
construction worker                             π·
woman guard                                   πββ
guard                                           π
woman detective                             π΅οΈββοΈ
detective                                       π΅
woman health worker                           π©ββ
man health worker                             π¨ββ
woman farmer                                  π©βπΎ
man farmer                                    π¨βπΎ
woman cook                                    π©βπ³
man cook                                      π¨βπ³
woman student                                 π©βπ
man student                                   π¨βπ
woman singer                                  π©βπ€
man singer                                    π¨βπ€
woman teacher                                 π©βπ«
man teacher                                   π¨βπ«
woman factory worker                          π©βπ­
man factory worker                            π¨βπ­
woman technologist                            π©βπ»
man technologist                              π¨βπ»
woman office worker                           π©βπΌ
man office worker                             π¨βπΌ
woman mechanic                                π©βπ§
man mechanic                                  π¨βπ§
woman scientist                               π©βπ¬
man scientist                                 π¨βπ¬
woman artist                                  π©βπ¨
man artist                                    π¨βπ¨
woman firefighter                             π©βπ
man firefighter                               π¨βπ
woman pilot                                   π©ββ
man pilot                                     π¨ββ
woman astronaut                               π©βπ
man astronaut                                 π¨βπ
woman judge                                   π©ββ
man judge                                     π¨ββ
Mrs. Claus                                      π€Ά
Santa Claus                                     π
princess                                        πΈ
prince                                          π€΄
bride with veil                                 π°
man in tuxedo                                   π€΅
baby angel                                      πΌ
pregnant woman                                  π€°
woman bowing                                  πββ
person bowing                                   π
person tipping hand                             π
man tipping hand                              πββ
person gesturing NO                             π
man gesturing NO                              πββ
person gesturing OK                             π
man gesturing OK                              πββ
person raising hand                             π
man raising hand                              πββ
woman facepalming                             π€¦ββ
man facepalming                               π€¦ββ
woman shrugging                               π€·ββ
man shrugging                                 π€·ββ
person pouting                                  π
man pouting                                   πββ
person frowning                                 π
man frowning                                  πββ
person getting haircut                          π
man getting haircut                           πββ
person getting massage                          π
man getting massage                           πββ
man in business suit levitating                 π΄
woman dancing                                   π
man dancing                                     πΊ
people with bunny ears partying                 π―
men with bunny ears partying                  π―ββ
woman walking                                 πΆββ
person walking                                  πΆ
woman running                                 πββ
person running                                  π
man and woman holding hands                     π«
two women holding hands                         π­
two men holding hands                           π¬
couple with heart                               π
couple with heart: woman             woman            π©ββ€οΈβπ©
couple with heart: man                 man                π¨ββ€οΈβπ¨
kiss                                            π
kiss: woman                        woman                       π©ββ€οΈβπβπ©
kiss: man                            man                           π¨ββ€οΈβπβπ¨
family                                          πͺ
family: man                     woman                     girl                    π¨βπ©βπ§
family: man              woman              girl              boy             π¨βπ©βπ§βπ¦
family: man               woman               boy               boy              π¨βπ©βπ¦βπ¦
family: man             woman             girl             girl            π¨βπ©βπ§βπ§
family: woman                    woman                    boy                   π©βπ©βπ¦
family: woman                   woman                   girl                  π©βπ©βπ§
family: woman            woman            girl            boy           π©βπ©βπ§βπ¦
family: woman             woman             boy             boy            π©βπ©βπ¦βπ¦
family: woman           woman           girl           girl          π©βπ©βπ§βπ§
family: man                        man                        boy                       π¨βπ¨βπ¦
family: man                       man                       girl                      π¨βπ¨βπ§
family: man                man                girl                boy               π¨βπ¨βπ§βπ¦
family: man                 man                 boy                 boy                π¨βπ¨βπ¦βπ¦
family: man               man               girl               girl              π¨βπ¨βπ§βπ§
family: woman                             boy                            π©βπ¦
family: woman                            girl                           π©βπ§
family: woman                     girl                     boy                    π©βπ§βπ¦
family: woman                      boy                      boy                     π©βπ¦βπ¦
family: woman                    girl                    girl                   π©βπ§βπ§
family: man                               boy                              π¨βπ¦
family: man                              girl                             π¨βπ§
family: man                       girl                       boy                      π¨βπ§βπ¦
family: man                        boy                        boy                       π¨βπ¦βπ¦
family: man                      girl                      girl                     π¨βπ§βπ§
womanβs clothes                                 π
t-shirt                                         π
jeans                                           π
necktie                                         π
dress                                           π
bikini                                          π
kimono                                          π
high-heeled shoe                                π 
womanβs sandal                                  π‘
womanβs boot                                    π’
manβs shoe                                      π
running shoe                                    π
womanβs hat                                     π
top hat                                         π©
graduation cap                                  π
crown                                           π
rescue workerβs helmet                          β
school backpack                                 π
clutch bag                                      π
purse                                           π
handbag                                         π
briefcase                                       πΌ
glasses                                         π
sunglasses                                      πΆ
closed umbrella                                 π
umbrella                                       βοΈ
dog face                                        πΆ
cat face                                        π±
mouse face                                      π­
hamster face                                    πΉ
rabbit face                                     π°
fox face                                        π¦
bear face                                       π»
panda face                                      πΌ
koala                                           π¨
tiger face                                      π―
lion face                                       π¦
cow face                                        π?
pig face                                        π·
pig nose                                        π½
frog face                                       πΈ
monkey face                                     π΅
see-no-evil monkey                              π
hear-no-evil monkey                             π
speak-no-evil monkey                            π
monkey                                          π
chicken                                         π
penguin                                         π§
bird                                            π¦
baby chick                                      π€
hatching chick                                  π£
front-facing baby chick                         π₯
duck                                            π¦
eagle                                           π¦
owl                                             π¦
bat                                             π¦
wolf face                                       πΊ
boar                                            π
horse face                                      π΄
unicorn face                                    π¦
honeybee                                        π
bug                                             π
butterfly                                       π¦
snail                                           π
spiral shell                                    π
lady beetle                                     π
ant                                             π
spider                                          π·
spider web                                      πΈ
turtle                                          π’
snake                                           π
lizard                                          π¦
scorpion                                        π¦
crab                                            π¦
squid                                           π¦
octopus                                         π
shrimp                                          π¦
tropical fish                                   π 
fish                                            π
blowfish                                        π‘
dolphin                                         π¬
shark                                           π¦
spouting whale                                  π³
whale                                           π
crocodile                                       π
leopard                                         π
tiger                                           π
water buffalo                                   π
ox                                              π
cow                                             π
deer                                            π¦
camel                                           πͺ
two-hump camel                                  π«
elephant                                        π
rhinoceros                                      π¦
gorilla                                         π¦
horse                                           π
pig                                             π
goat                                            π
ram                                             π
sheep                                           π
dog                                             π
poodle                                          π©
cat                                             π
rooster                                         π
turkey                                          π¦
dove                                            π
rabbit                                          π
mouse                                           π
rat                                             π
chipmunk                                        πΏ
paw prints                                      πΎ
dragon                                          π
dragon face                                     π²
cactus                                          π΅
Christmas tree                                  π
evergreen tree                                  π²
deciduous tree                                  π³
palm tree                                       π΄
seedling                                        π±
herb                                            πΏ
shamrock                                       βοΈ
four leaf clover                                π
pine decoration                                 π
tanabata tree                                   π
leaf fluttering in wind                         π
fallen leaf                                     π
maple leaf                                      π
mushroom                                        π
sheaf of rice                                   πΎ
bouquet                                         π
tulip                                           π·
rose                                            πΉ
wilted flower                                   π₯
sunflower                                       π»
blossom                                         πΌ
cherry blossom                                  πΈ
hibiscus                                        πΊ
globe showing Americas                          π
globe showing Europe-Africa                     π
globe showing Asia-Australia                    π
full moon                                       π
waning gibbous moon                             π
last quarter moon                               π
waning crescent moon                            π
new moon                                        π
waxing crescent moon                            π
first quarter moon                              π
waxing gibbous moon                             π
new moon face                                   π
full moon with face                             π
sun with face                                   π
first quarter moon with face                    π
last quarter moon with face                     π
crescent moon                                   π
dizzy                                           π«
white medium star                              β­οΈ
glowing star                                    π
sparkles                                        β¨
high voltage                                   β‘οΈ
fire                                            π₯
collision                                       π₯
comet                                           β
sun                                            βοΈ
sun behind small cloud                          π€
sun behind cloud                               βοΈ
sun behind large cloud                          π₯
sun behind rain cloud                           π¦
rainbow                                         π
cloud                                          βοΈ
cloud with rain                                 π§
cloud with lightning and rain                   β
cloud with lightning                            π©
cloud with snow                                 π¨
snowman                                        βοΈ
snowman without snow                           βοΈ
snowflake                                      βοΈ
wind face                                       π¬
dashing away                                    π¨
tornado                                         πͺ
fog                                             π«
water wave                                      π
droplet                                         π§
sweat droplets                                  π¦
umbrella with rain drops                       βοΈ
green apple                                     π
red apple                                       π
pear                                            π
tangerine                                       π
lemon                                           π
banana                                          π
watermelon                                      π
grapes                                          π
strawberry                                      π
melon                                           π
cherries                                        π
peach                                           π
pineapple                                       π
kiwi fruit                                      π₯
avocado                                         π₯
tomato                                          π
eggplant                                        π
cucumber                                        π₯
carrot                                          π₯
ear of corn                                     π½
hot pepper                                      πΆ
potato                                          π₯
roasted sweet potato                            π 
chestnut                                        π°
peanuts                                         π₯
honey pot                                       π―
croissant                                       π₯
bread                                           π
baguette bread                                  π₯
cheese wedge                                    π§
egg                                             π₯
cooking                                         π³
bacon                                           π₯
pancakes                                        π₯
fried shrimp                                    π€
poultry leg                                     π
meat on bone                                    π
pizza                                           π
hot dog                                         π­
hamburger                                       π
french fries                                    π
stuffed flatbread                               π₯
taco                                            π?
burrito                                         π―
green salad                                     π₯
shallow pan of food                             π₯
spaghetti                                       π
steaming bowl                                   π
pot of food                                     π²
fish cake with swirl                            π₯
sushi                                           π£
bento box                                       π±
curry rice                                      π
cooked rice                                     π
rice ball                                       π
rice cracker                                    π
oden                                            π’
dango                                           π‘
shaved ice                                      π§
ice cream                                       π¨
soft ice cream                                  π¦
shortcake                                       π°
birthday cake                                   π
custard                                         π?
lollipop                                        π­
candy                                           π¬
chocolate bar                                   π«
popcorn                                         πΏ
doughnut                                        π©
cookie                                          πͺ
glass of milk                                   π₯
baby bottle                                     πΌ
hot beverage                                   βοΈ
teacup without handle                           π΅
sake                                            πΆ
beer mug                                        πΊ
clinking beer mugs                              π»
clinking glasses                                π₯
wine glass                                      π·
tumbler glass                                   π₯
cocktail glass                                  πΈ
tropical drink                                  πΉ
bottle with popping cork                        πΎ
spoon                                           π₯
fork and knife                                  π΄
fork and knife with plate                       π½
soccer ball                                    β½οΈ
basketball                                      π
american football                               π
baseball                                       βΎοΈ
tennis                                          πΎ
volleyball                                      π
rugby football                                  π
pool 8 ball                                     π±
ping pong                                       π
badminton                                       πΈ
goal net                                        π₯
ice hockey                                      π
field hockey                                    π
cricket                                         π
flag in hole                                   β³οΈ
bow and arrow                                   πΉ
fishing pole                                    π£
boxing glove                                    π₯
martial arts uniform                            π₯
ice skate                                       βΈ
skis                                            πΏ
skier                                           β·
snowboarder                                     π
woman lifting weights                       ποΈββοΈ
person lifting weights                          π
person fencing                                  π€Ί
women wrestling                               π€Όββ
men wrestling                                 π€Όββ
woman cartwheeling                            π€Έββ
man cartwheeling                              π€Έββ
woman bouncing ball                         βΉοΈββοΈ
person bouncing ball                            βΉ
woman playing handball                        π€Ύββ
man playing handball                          π€Ύββ
woman golfing                               ποΈββοΈ
person golfing                                  π
woman surfing                                 πββ
person surfing                                  π
woman swimming                                πββ
person swimming                                 π
woman playing water polo                      π€½ββ
man playing water polo                        π€½ββ
woman rowing boat                             π£ββ
person rowing boat                              π£
horse racing                                    π
woman biking                                  π΄ββ
person biking                                   π΄
woman mountain biking                         π΅ββ
person mountain biking                          π΅
running shirt                                   π½
sports medal                                    π
military medal                                  π
1st place medal                                 π₯
2nd place medal                                 π₯
3rd place medal                                 π₯
trophy                                          π
rosette                                         π΅
reminder ribbon                                 π
ticket                                          π«
admission tickets                               π
circus tent                                     πͺ
woman juggling                                π€Ήββ
man juggling                                  π€Ήββ
performing arts                                 π­
artist palette                                  π¨
clapper board                                   π¬
microphone                                      π€
headphone                                       π§
musical score                                   πΌ
musical keyboard                                πΉ
drum                                            π₯
saxophone                                       π·
trumpet                                         πΊ
guitar                                          πΈ
violin                                          π»
game die                                        π²
direct hit                                      π―
bowling                                         π³
video game                                      π?
slot machine                                    π°
automobile                                      π
taxi                                            π
sport utility vehicle                           π
bus                                             π
trolleybus                                      π
racing car                                      π
police car                                      π
ambulance                                       π
fire engine                                     π
minibus                                         π
delivery truck                                  π
articulated lorry                               π
tractor                                         π
kick scooter                                    π΄
bicycle                                         π²
motor scooter                                   π΅
motorcycle                                      π
police car light                                π¨
oncoming police car                             π
oncoming bus                                    π
oncoming automobile                             π
oncoming taxi                                   π
aerial tramway                                  π‘
mountain cableway                               π 
suspension railway                              π
railway car                                     π
tram car                                        π
mountain railway                                π
monorail                                        π
high-speed train                                π
high-speed train with bullet nose               π
light rail                                      π
locomotive                                      π
train                                           π
metro                                           π
tram                                            π
station                                         π
helicopter                                      π
small airplane                                  π©
airplane                                       βοΈ
airplane departure                              π«
airplane arrival                                π¬
rocket                                          π
satellite                                       π°
seat                                            πΊ
canoe                                           πΆ
sailboat                                       β΅οΈ
motor boat                                      π₯
speedboat                                       π€
passenger ship                                  π³
ferry                                           β΄
ship                                            π’
anchor                                         βοΈ
construction                                    π§
fuel pump                                      β½οΈ
bus stop                                        π
vertical traffic light                          π¦
horizontal traffic light                        π₯
world map                                       πΊ
moai                                            πΏ
Statue of Liberty                               π½
fountain                                       β²οΈ
Tokyo tower                                     πΌ
castle                                          π°
Japanese castle                                 π―
stadium                                         π
ferris wheel                                    π‘
roller coaster                                  π’
carousel horse                                  π 
umbrella on ground                              β±
beach with umbrella                             π
desert island                                   π
mountain                                        β°
snow-capped mountain                            π
mount fuji                                      π»
volcano                                         π
desert                                          π
camping                                         π
tent                                           βΊοΈ
railway track                                   π€
motorway                                        π£
building construction                           π
factory                                         π­
house                                           π 
house with garden                               π‘
house                                           π
derelict house                                  π
office building                                 π’
department store                                π¬
Japanese post office                            π£
post office                                     π€
hospital                                        π₯
bank                                            π¦
hotel                                           π¨
convenience store                               πͺ
school                                          π«
love hotel                                      π©
wedding                                         π
classical building                              π
church                                         βͺοΈ
mosque                                          π
synagogue                                       π
kaaba                                           π
shinto shrine                                   β©
map of Japan                                    πΎ
moon viewing ceremony                           π
national park                                   π
sunrise                                         π
sunrise over mountains                          π
shooting star                                   π 
sparkler                                        π
fireworks                                       π
sunset                                          π
cityscape at dusk                               π
cityscape                                       π
night with stars                                π
milky way                                       π
bridge at night                                 π
foggy                                           π
watch                                          βοΈ
mobile phone                                    π±
mobile phone with arrow                         π²
laptop computer                                 π»
keyboard                                       β¨οΈ
desktop computer                                π₯
printer                                         π¨
computer mouse                                  π±
trackball                                       π²
joystick                                        πΉ
clamp                                           π
computer disk                                   π½
floppy disk                                     πΎ
optical disk                                    πΏ
dvd                                             π
videocassette                                   πΌ
camera                                          π·
camera with flash                               πΈ
video camera                                    πΉ
movie camera                                    π₯
film projector                                  π½
film frames                                     π
telephone receiver                              π
telephone                                      βοΈ
pager                                           π
fax machine                                     π 
television                                      πΊ
radio                                           π»
studio microphone                               π
level slider                                    π
control knobs                                   π
stopwatch                                       β±
timer clock                                     β²
alarm clock                                     β°
mantelpiece clock                               π°
hourglass                                      βοΈ
hourglass with flowing sand                     β³
satellite antenna                               π‘
battery                                         π
electric plug                                   π
light bulb                                      π‘
flashlight                                      π¦
candle                                          π―
wastebasket                                     π
oil drum                                        π’
money with wings                                πΈ
dollar banknote                                 π΅
yen banknote                                    π΄
euro banknote                                   πΆ
pound banknote                                  π·
money bag                                       π°
credit card                                     π³
gem stone                                       π
balance scale                                  βοΈ
wrench                                          π§
hammer                                          π¨
hammer and pick                                 β
hammer and wrench                               π 
pick                                            β
nut and bolt                                    π©
gear                                           βοΈ
chains                                          β
pistol                                          π«
bomb                                            π£
kitchen knife                                   πͺ
dagger                                          π‘
crossed swords                                 βοΈ
shield                                          π‘
cigarette                                       π¬
coffin                                         β°οΈ
funeral urn                                    β±οΈ
amphora                                         πΊ
crystal ball                                    π?
prayer beads                                    πΏ
barber pole                                     π
alembic                                        βοΈ
telescope                                       π­
microscope                                      π¬
hole                                            π³
pill                                            π
syringe                                         π
thermometer                                     π‘
toilet                                          π½
potable water                                   π°
shower                                          πΏ
bathtub                                         π
person taking bath                              π
bellhop bell                                    π
key                                             π
old key                                         π
door                                            πͺ
couch and lamp                                  π
bed                                             π
person in bed                                   π
framed picture                                  πΌ
shopping bags                                   π
shopping cart                                   π
wrapped gift                                    π
balloon                                         π
carp streamer                                   π
ribbon                                          π
confetti ball                                   π
party popper                                    π
Japanese dolls                                  π
red paper lantern                               π?
wind chime                                      π
envelope                                       βοΈ
envelope with arrow                             π©
incoming envelope                               π¨
e-mail                                          π§
love letter                                     π
inbox tray                                      π₯
outbox tray                                     π€
package                                         π¦
label                                           π·
closed mailbox with lowered flag                πͺ
closed mailbox with raised flag                 π«
open mailbox with raised flag                   π¬
open mailbox with lowered flag                  π­
postbox                                         π?
postal horn                                     π―
scroll                                          π
page with curl                                  π
page facing up                                  π
bookmark tabs                                   π
bar chart                                       π
chart increasing                                π
chart decreasing                                π
spiral notepad                                  π
spiral calendar                                 π
tear-off calendar                               π
calendar                                        π
card index                                      π
card file box                                   π
ballot box with ballot                          π³
file cabinet                                    π
clipboard                                       π
file folder                                     π
open file folder                                π
card index dividers                             π
rolled-up newspaper                             π
newspaper                                       π°
notebook                                        π
notebook with decorative cover                  π
ledger                                          π
closed book                                     π
green book                                      π
blue book                                       π
orange book                                     π
books                                           π
open book                                       π
bookmark                                        π
link                                            π
paperclip                                       π
linked paperclips                               π
triangular ruler                                π
straight ruler                                  π
pushpin                                         π
round pushpin                                   π
scissors                                       βοΈ
pen                                             π
fountain pen                                    π
black nib                                      βοΈ
paintbrush                                      π
crayon                                          π
memo                                            π
pencil                                         βοΈ
left-pointing magnifying glass                  π
right-pointing magnifying glass                 π
locked with pen                                 π
locked with key                                 π
locked                                          π
unlocked                                        π
red heart                                      β€οΈ
yellow heart                                    π
green heart                                     π
blue heart                                      π
purple heart                                    π
black heart                                     π€
broken heart                                    π
heavy heart exclamation                        β£οΈ
two hearts                                      π
revolving hearts                                π
beating heart                                   π
growing heart                                   π
sparkling heart                                 π
heart with arrow                                π
heart with ribbon                               π
heart decoration                                π
peace symbol                                   β?οΈ
latin cross                                    βοΈ
star and crescent                              βͺοΈ
om                                              π
wheel of dharma                                βΈοΈ
star of David                                  β‘οΈ
dotted six-pointed star                         π―
menorah                                         π
yin yang                                       β―οΈ
orthodox cross                                 β¦οΈ
place of worship                                π
Ophiuchus                                       β
Aries                                          βοΈ
Taurus                                         βοΈ
Gemini                                         βοΈ
Cancer                                         βοΈ
Leo                                            βοΈ
Virgo                                          βοΈ
Libra                                          βοΈ
Scorpius                                       βοΈ
Sagittarius                                    βοΈ
Capricorn                                      βοΈ
Aquarius                                       βοΈ
Pisces                                         βοΈ
ID button                                       π
atom symbol                                    βοΈ
Japanese βacceptableβ button                    π
radioactive                                    β’οΈ
biohazard                                      β£οΈ
mobile phone off                                π΄
vibration mode                                  π³
Japanese βnot free of chargeβ button            πΆ
Japanese βfree of chargeβ button               ποΈ
Japanese βapplicationβ button                   πΈ
Japanese βopen for businessβ button             πΊ
Japanese βmonthly amountβ button               π·οΈ
eight-pointed star                             β΄οΈ
VS button                                       π
white flower                                    π?
Japanese βbargainβ button                       π
Japanese βsecretβ button                       γοΈ
Japanese βcongratulationsβ button              γοΈ
Japanese βpassing gradeβ button                 π΄
Japanese βno vacancyβ button                    π΅
Japanese βdiscountβ button                      πΉ
Japanese βprohibitedβ button                    π²
A button (blood type)                          π°οΈ
B button (blood type)                          π±οΈ
AB button (blood type)                          π
CL button                                       π
O button (blood type)                          πΎοΈ
SOS button                                      π
cross mark                                      β
heavy large circle                             β­οΈ
stop sign                                       π
no entry                                       βοΈ
name badge                                      π
prohibited                                      π«
hundred points                                  π―
anger symbol                                    π’
hot springs                                    β¨οΈ
no pedestrians                                  π·
no littering                                    π―
no bicycles                                     π³
non-potable water                               π±
no one under eighteen                           π
no mobile phones                                π΅
no smoking                                      π­
exclamation mark                               βοΈ
white exclamation mark                          β
question mark                                   β
white question mark                             β
double exclamation mark                        βΌοΈ
exclamation question mark                      βοΈ
dim button                                      π
bright button                                   π
part alternation mark                          γ½οΈ
warning                                        β οΈ
children crossing                               πΈ
trident emblem                                  π±
fleur-de-lis                                   βοΈ
Japanese symbol for beginner                    π°
recycling symbol                               β»οΈ
white heavy check mark                          β
Japanese βreservedβ button                     π―οΈ
chart increasing with yen                       πΉ
sparkle                                        βοΈ
eight-spoked asterisk                          β³οΈ
cross mark button                               β
globe with meridians                            π
diamond with a dot                              π 
circled M                                      βοΈ
cyclone                                         π
zzz                                             π€
ATM sign                                        π§
water closet                                    πΎ
wheelchair symbol                              βΏοΈ
P button                                       πΏοΈ
Japanese βvacancyβ button                       π³
Japanese βservice chargeβ button               ποΈ
passport control                                π
customs                                         π
baggage claim                                   π
left luggage                                    π
menβs room                                      πΉ
womenβs room                                    πΊ
baby symbol                                     πΌ
restroom                                        π»
litter in bin sign                              π?
cinema                                          π¦
antenna bars                                    πΆ
Japanese βhereβ button                          π
input symbols                                   π£
information                                    βΉοΈ
input latin letters                             π€
input latin lowercase                           π‘
input latin uppercase                           π 
NG button                                       π
OK button                                       π
UP! button                                      π
COOL button                                     π
NEW button                                      π
FREE button                                     π
keycap: 0                                     0οΈβ£
keycap: 1                                     1οΈβ£
keycap: 2                                     2οΈβ£
keycap: 3                                     3οΈβ£
keycap: 4                                     4οΈβ£
keycap: 5                                     5οΈβ£
keycap: 6                                     6οΈβ£
keycap: 7                                     7οΈβ£
keycap: 8                                     8οΈβ£
keycap: 9                                     9οΈβ£
keycap 10                                       π
input numbers                                   π’
keycap: #                                     #οΈβ£
keycap: *                                     *οΈβ£
play button                                    βΆοΈ
pause button                                    βΈ
play or pause button                            β―
stop button                                     βΉ
record button                                   βΊ
next track button                               β­
last track button                               β?
fast-forward button                             β©
fast reverse button                             βͺ
fast up button                                  β«
fast down button                                β¬
reverse button                                 βοΈ
up button                                       πΌ
down button                                     π½
right arrow                                    β‘οΈ
left arrow                                     β¬οΈ
up arrow                                       β¬οΈ
down arrow                                     β¬οΈ
up-right arrow                                 βοΈ
down-right arrow                               βοΈ
down-left arrow                                βοΈ
up-left arrow                                  βοΈ
up-down arrow                                  βοΈ
left-right arrow                               βοΈ
left arrow curving right                       βͺοΈ
right arrow curving left                       β©οΈ
right arrow curving up                         β€΄οΈ
right arrow curving down                       β€΅οΈ
shuffle tracks button                           π
repeat button                                   π
repeat single button                            π
anticlockwise arrows button                     π
clockwise vertical arrows                       π
musical note                                    π΅
musical notes                                   πΆ
heavy plus sign                                 β
heavy minus sign                                β
heavy division sign                             β
heavy multiplication x                         βοΈ
heavy dollar sign                               π²
currency exchange                               π±
trade mark                                     β’οΈ
copyright                                      Β©οΈ
registered                                     Β?οΈ
wavy dash                                      γ°οΈ
curly loop                                      β°
double curly loop                               βΏ
END arrow                                       π
BACK arrow                                      π
ON! arrow                                       π
TOP arrow                                       π
SOON arrow                                      π
heavy check mark                               βοΈ
ballot box with check                          βοΈ
radio button                                    π
white circle                                   βͺοΈ
black circle                                   β«οΈ
red circle                                      π΄
blue circle                                     π΅
red triangle pointed up                         πΊ
red triangle pointed down                       π»
small orange diamond                            πΈ
small blue diamond                              πΉ
large orange diamond                            πΆ
large blue diamond                              π·
white square button                             π³
black square button                             π²
black small square                             βͺοΈ
white small square                             β«οΈ
black medium-small square                      βΎοΈ
white medium-small square                      β½οΈ
black medium square                            βΌοΈ
white medium square                            β»οΈ
black large square                             β¬οΈ
white large square                             β¬οΈ
speaker low volume                              π
muted speaker                                   π
speaker medium volume                           π
speaker high volume                             π
bell                                            π
bell with slash                                 π
megaphone                                       π£
loudspeaker                                     π’
eye in speech bubble                          πβπ¨
speech balloon                                  π¬
thought balloon                                 π­
right anger bubble                              π―
spade suit                                     β οΈ
club suit                                      β£οΈ
heart suit                                     β₯οΈ
diamond suit                                   β¦οΈ
joker                                           π
flower playing cards                            π΄
mahjong red dragon                             ποΈ
one oβclock                                     π
two oβclock                                     π
three oβclock                                   π
four oβclock                                    π
five oβclock                                    π
six oβclock                                     π
seven oβclock                                   π
eight oβclock                                   π
nine oβclock                                    π
ten oβclock                                     π
eleven oβclock                                  π
twelve oβclock                                  π
one-thirty                                      π
two-thirty                                      π
three-thirty                                    π
four-thirty                                     π
five-thirty                                     π 
six-thirty                                      π‘
seven-thirty                                    π’
eight-thirty                                    π£
nine-thirty                                     π€
ten-thirty                                      π₯
eleven-thirty                                   π¦
twelve-thirty                                   π§
white flag                                     π³οΈ
black flag                                      π΄
chequered flag                                  π
triangular flag                                 π©
rainbow flag                                 π³οΈβπ
Afghanistan                                    π¦π«
Γland Islands                                  π¦π½
Albania                                        π¦π±
Algeria                                        π©πΏ
American Samoa                                 π¦πΈ
Andorra                                        π¦π©
Angola                                         π¦π΄
Anguilla                                       π¦π?
Antarctica                                     π¦πΆ
Antigua & Barbuda                              π¦π¬
Argentina                                      π¦π·
Armenia                                        π¦π²
Aruba                                          π¦πΌ
Australia                                      π¦πΊ
Austria                                        π¦πΉ
Azerbaijan                                     π¦πΏ
Bahamas                                        π§πΈ
Bahrain                                        π§π­
Bangladesh                                     π§π©
Barbados                                       π§π§
Belarus                                        π§πΎ
Belgium                                        π§πͺ
Belize                                         π§πΏ
Benin                                          π§π―
Bermuda                                        π§π²
Bhutan                                         π§πΉ
Bolivia                                        π§π΄
Caribbean Netherlands                          π§πΆ
Bosnia & Herzegovina                           π§π¦
Botswana                                       π§πΌ
Brazil                                         π§π·
British Indian Ocean Territory                 π?π΄
British Virgin Islands                         π»π¬
Brunei                                         π§π³
Bulgaria                                       π§π¬
Burkina Faso                                   π§π«
Burundi                                        π§π?
Cape Verde                                     π¨π»
Cambodia                                       π°π­
Cameroon                                       π¨π²
Canada                                         π¨π¦
Canary Islands                                 π?π¨
Cayman Islands                                 π°πΎ
Central African Republic                       π¨π«
Chad                                           πΉπ©
Chile                                          π¨π±
China                                          π¨π³
Christmas Island                               π¨π½
Cocos (Keeling) Islands                        π¨π¨
Colombia                                       π¨π΄
Comoros                                        π°π²
Congo - Brazzaville                            π¨π¬
Congo - Kinshasa                               π¨π©
Cook Islands                                   π¨π°
Costa Rica                                     π¨π·
CΓ΄te dβIvoire                                  π¨π?
Croatia                                        π­π·
Cuba                                           π¨πΊ
CuraΓ§ao                                        π¨πΌ
Cyprus                                         π¨πΎ
Czech Republic                                 π¨πΏ
Denmark                                        π©π°
Djibouti                                       π©π―
Dominica                                       π©π²
Dominican Republic                             π©π΄
Ecuador                                        πͺπ¨
Egypt                                          πͺπ¬
El Salvador                                    πΈπ»
Equatorial Guinea                              π¬πΆ
Eritrea                                        πͺπ·
Estonia                                        πͺπͺ
Ethiopia                                       πͺπΉ
European Union                                 πͺπΊ
Falkland Islands                               π«π°
Faroe Islands                                  π«π΄
Fiji                                           π«π―
Finland                                        π«π?
France                                         π«π·
French Guiana                                  π¬π«
French Polynesia                               π΅π«
French Southern Territories                    πΉπ«
Gabon                                          π¬π¦
Gambia                                         π¬π²
Georgia                                        π¬πͺ
Germany                                        π©πͺ
Ghana                                          π¬π­
Gibraltar                                      π¬π?
Greece                                         π¬π·
Greenland                                      π¬π±
Grenada                                        π¬π©
Guadeloupe                                     π¬π΅
Guam                                           π¬πΊ
Guatemala                                      π¬πΉ
Guernsey                                       π¬π¬
Guinea                                         π¬π³
Guinea-Bissau                                  π¬πΌ
Guyana                                         π¬πΎ
Haiti                                          π­πΉ
Honduras                                       π­π³
Hong Kong SAR China                            π­π°
Hungary                                        π­πΊ
Iceland                                        π?πΈ
India                                          π?π³
Indonesia                                      π?π©
Iran                                           π?π·
Iraq                                           π?πΆ
Ireland                                        π?πͺ
Isle of Man                                    π?π²
Israel                                         π?π±
Italy                                          π?πΉ
Jamaica                                        π―π²
Japan                                          π―π΅
crossed flags                                   π
Jersey                                         π―πͺ
Jordan                                         π―π΄
Kazakhstan                                     π°πΏ
Kenya                                          π°πͺ
Kiribati                                       π°π?
Kosovo                                         π½π°
Kuwait                                         π°πΌ
Kyrgyzstan                                     π°π¬
Laos                                           π±π¦
Latvia                                         π±π»
Lebanon                                        π±π§
Lesotho                                        π±πΈ
Liberia                                        π±π·
Libya                                          π±πΎ
Liechtenstein                                  π±π?
Lithuania                                      π±πΉ
Luxembourg                                     π±πΊ
Macau SAR China                                π²π΄
Macedonia                                      π²π°
Madagascar                                     π²π¬
Malawi                                         π²πΌ
Malaysia                                       π²πΎ
Maldives                                       π²π»
Mali                                           π²π±
Malta                                          π²πΉ
Marshall Islands                               π²π­
Martinique                                     π²πΆ
Mauritania                                     π²π·
Mauritius                                      π²πΊ
Mayotte                                        πΎπΉ
Mexico                                         π²π½
Micronesia                                     π«π²
Moldova                                        π²π©
Monaco                                         π²π¨
Mongolia                                       π²π³
Montenegro                                     π²πͺ
Montserrat                                     π²πΈ
Morocco                                        π²π¦
Mozambique                                     π²πΏ
Myanmar (Burma)                                π²π²
Namibia                                        π³π¦
Nauru                                          π³π·
Nepal                                          π³π΅
Netherlands                                    π³π±
New Caledonia                                  π³π¨
New Zealand                                    π³πΏ
Nicaragua                                      π³π?
Niger                                          π³πͺ
Nigeria                                        π³π¬
Niue                                           π³πΊ
Norfolk Island                                 π³π«
Northern Mariana Islands                       π²π΅
North Korea                                    π°π΅
Norway                                         π³π΄
Oman                                           π΄π²
Pakistan                                       π΅π°
Palau                                          π΅πΌ
Palestinian Territories                        π΅πΈ
Panama                                         π΅π¦
Papua New Guinea                               π΅π¬
Paraguay                                       π΅πΎ
Peru                                           π΅πͺ
Philippines                                    π΅π­
Pitcairn Islands                               π΅π³
Poland                                         π΅π±
Portugal                                       π΅πΉ
Puerto Rico                                    π΅π·
Qatar                                          πΆπ¦
RΓ©union                                        π·πͺ
Romania                                        π·π΄
Russia                                         π·πΊ
Rwanda                                         π·πΌ
St. BarthΓ©lemy                                 π§π±
St. Helena                                     πΈπ­
St. Kitts & Nevis                              π°π³
St. Lucia                                      π±π¨
St. Pierre & Miquelon                          π΅π²
St. Vincent & Grenadines                       π»π¨
Samoa                                          πΌπΈ
San Marino                                     πΈπ²
SΓ£o TomΓ© & PrΓ­ncipe                            πΈπΉ
Saudi Arabia                                   πΈπ¦
Senegal                                        πΈπ³
Serbia                                         π·πΈ
Seychelles                                     πΈπ¨
Sierra Leone                                   πΈπ±
Singapore                                      πΈπ¬
Sint Maarten                                   πΈπ½
Slovakia                                       πΈπ°
Slovenia                                       πΈπ?
Solomon Islands                                πΈπ§
Somalia                                        πΈπ΄
South Africa                                   πΏπ¦
South Georgia & South Sandwich Islands         π¬πΈ
South Korea                                    π°π·
South Sudan                                    πΈπΈ
Spain                                          πͺπΈ
Sri Lanka                                      π±π°
Sudan                                          πΈπ©
Suriname                                       πΈπ·
Swaziland                                      πΈπΏ
Sweden                                         πΈπͺ
Switzerland                                    π¨π­
Syria                                          πΈπΎ
Taiwan                                         πΉπΌ
Tajikistan                                     πΉπ―
Tanzania                                       πΉπΏ
Thailand                                       πΉπ­
Timor-Leste                                    πΉπ±
Togo                                           πΉπ¬
Tokelau                                        πΉπ°
Tonga                                          πΉπ΄
Trinidad & Tobago                              πΉπΉ
Tunisia                                        πΉπ³
Turkey                                         πΉπ·
Turkmenistan                                   πΉπ²
Turks & Caicos Islands                         πΉπ¨
Tuvalu                                         πΉπ»
Uganda                                         πΊπ¬
Ukraine                                        πΊπ¦
United Arab Emirates                           π¦πͺ
United Kingdom                                 π¬π§
United States                                  πΊπΈ
U.S. Virgin Islands                            π»π?
Uruguay                                        πΊπΎ
Uzbekistan                                     πΊπΏ
Vanuatu                                        π»πΊ
Vatican City                                   π»π¦
Venezuela                                      π»πͺ
Vietnam                                        π»π³
Wallis & Futuna                                πΌπ«
Western Sahara                                 πͺπ­
Yemen                                          πΎπͺ
Zambia                                         πΏπ²
Zimbabwe                                       πΏπΌ
