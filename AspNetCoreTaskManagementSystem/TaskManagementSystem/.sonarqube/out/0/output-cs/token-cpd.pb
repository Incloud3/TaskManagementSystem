ß<
|C:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	 
TaskManagementSystem
 
. 
Areas $
.$ %
Identity% -
.- .
Pages. 3
.3 4
Account4 ;
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M

LoginModelM W
>W X
loggerY _
)_ `
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
IList** 
<**  
AuthenticationScheme** )
>**) *
ExternalLogins**+ 9
{**: ;
get**< ?
;**? @
set**A D
;**D E
}**F G
public00 
string00 
	ReturnUrl00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
[66 	
TempData66	 
]66 
public77 
string77 
ErrorMessage77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public== 
class== 

InputModel== 
{>> 	
[CC 
RequiredCC 
]CC 
[DD 
DataTypeDD 
(DD 
DataTypeDD 
.DD 
TextDD #
)DD# $
]DD$ %
[EE 
DisplayEE 
(EE 
NameEE 
=EE 
$strEE &
)EE& '
]EE' (
publicFF 
stringFF 
UsernameFF "
{FF# $
getFF% (
;FF( )
setFF* -
;FF- .
}FF/ 0
[LL 
RequiredLL 
]LL 
[MM 
DataTypeMM 
(MM 
DataTypeMM 
.MM 
PasswordMM '
)MM' (
]MM( )
publicNN 
stringNN 
PasswordNN "
{NN# $
getNN% (
;NN( )
setNN* -
;NN- .
}NN/ 0
[TT 
DisplayTT 
(TT 
NameTT 
=TT 
$strTT *
)TT* +
]TT+ ,
publicUU 
boolUU 

RememberMeUU "
{UU# $
getUU% (
;UU( )
setUU* -
;UU- .
}UU/ 0
}VV 	
publicXX 
asyncXX 
TaskXX 

OnGetAsyncXX $
(XX$ %
stringXX% +
	returnUrlXX, 5
=XX6 7
nullXX8 <
)XX< =
{YY 	
ifZZ 
(ZZ 
!ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ %
(ZZ% &
ErrorMessageZZ& 2
)ZZ2 3
)ZZ3 4
{[[ 

ModelState\\ 
.\\ 
AddModelError\\ (
(\\( )
string\\) /
.\\/ 0
Empty\\0 5
,\\5 6
ErrorMessage\\7 C
)\\C D
;\\D E
}]] 
	returnUrl__ 
??=__ 
Url__ 
.__ 
Content__ %
(__% &
$str__& *
)__* +
;__+ ,
awaitbb 
HttpContextbb 
.bb 
SignOutAsyncbb *
(bb* +
IdentityConstantsbb+ <
.bb< =
ExternalSchemebb= K
)bbK L
;bbL M
ExternalLoginsdd 
=dd 
(dd 
awaitdd #
_signInManagerdd$ 2
.dd2 31
%GetExternalAuthenticationSchemesAsyncdd3 X
(ddX Y
)ddY Z
)ddZ [
.dd[ \
ToListdd\ b
(ddb c
)ddc d
;ddd e
	ReturnUrlff 
=ff 
	returnUrlff !
;ff! "
}gg 	
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
OnPostAsyncii) 4
(ii4 5
stringii5 ;
	returnUrlii< E
=iiF G
nulliiH L
)iiL M
{jj 	
	returnUrlkk 
??=kk 
Urlkk 
.kk 
Contentkk %
(kk% &
$strkk& *
)kk* +
;kk+ ,
ExternalLoginsmm 
=mm 
(mm 
awaitmm #
_signInManagermm$ 2
.mm2 31
%GetExternalAuthenticationSchemesAsyncmm3 X
(mmX Y
)mmY Z
)mmZ [
.mm[ \
ToListmm\ b
(mmb c
)mmc d
;mmd e
ifoo 
(oo 

ModelStateoo 
.oo 
IsValidoo "
)oo" #
{pp 
varss 
resultss 
=ss 
awaitss "
_signInManagerss# 1
.ss1 2
PasswordSignInAsyncss2 E
(ssE F
InputssF K
.ssK L
UsernamessL T
,ssT U
InputssV [
.ss[ \
Passwordss\ d
,ssd e
Inputssf k
.ssk l

RememberMessl v
,ssv w
lockoutOnFailure	ssx à
:
ssà â
false
ssä è
)
ssè ê
;
ssê ë
iftt 
(tt 
resulttt 
.tt 
	Succeededtt $
)tt$ %
{uu 
_loggervv 
.vv 
LogInformationvv *
(vv* +
$strvv+ <
)vv< =
;vv= >
returnww 
LocalRedirectww (
(ww( )
	returnUrlww) 2
)ww2 3
;ww3 4
}xx 
ifyy 
(yy 
resultyy 
.yy 
RequiresTwoFactoryy ,
)yy, -
{zz 
return{{ 
RedirectToPage{{ )
({{) *
$str{{* :
,{{: ;
new{{< ?
{{{@ A
	ReturnUrl{{B K
={{L M
	returnUrl{{N W
,{{W X

RememberMe{{Y c
={{d e
Input{{f k
.{{k l

RememberMe{{l v
}{{w x
){{x y
;{{y z
}|| 
if}} 
(}} 
result}} 
.}} 
IsLockedOut}} &
)}}& '
{~~ 
_logger 
. 

LogWarning &
(& '
$str' A
)A B
;B C
return
ÄÄ 
RedirectToPage
ÄÄ )
(
ÄÄ) *
$str
ÄÄ* 5
)
ÄÄ5 6
;
ÄÄ6 7
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 

ModelState
ÑÑ 
.
ÑÑ 
AddModelError
ÑÑ ,
(
ÑÑ, -
string
ÑÑ- 3
.
ÑÑ3 4
Empty
ÑÑ4 9
,
ÑÑ9 :
$str
ÑÑ; S
)
ÑÑS T
;
ÑÑT U
return
ÖÖ 
Page
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
}
ÜÜ 
}
áá 
return
ää 
Page
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç ¡o
C:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	 
TaskManagementSystem
 
. 
Areas $
.$ %
Identity% -
.- .
Pages. 3
.3 4
Account4 ;
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
IdentityUser) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private   
readonly   
IEmailSender   %
_emailSender  & 2
;  2 3
public"" 
RegisterModel"" 
("" 
UserManager## 
<## 
IdentityUser## $
>##$ %
userManager##& 1
,##1 2

IUserStore$$ 
<$$ 
IdentityUser$$ #
>$$# $
	userStore$$% .
,$$. /
SignInManager%% 
<%% 
IdentityUser%% &
>%%& '
signInManager%%( 5
,%%5 6
ILogger&& 
<&& 
RegisterModel&& !
>&&! "
logger&&# )
,&&) *
IEmailSender'' 
emailSender'' $
)''$ %
{(( 	
_userManager)) 
=)) 
userManager)) &
;))& '

_userStore** 
=** 
	userStore** "
;**" #
_emailStore++ 
=++ 
GetEmailStore++ '
(++' (
)++( )
;++) *
_signInManager,, 
=,, 
signInManager,, *
;,,* +
_logger-- 
=-- 
logger-- 
;-- 
_emailSender.. 
=.. 
emailSender.. &
;..& '
}// 	
[55 	
BindProperty55	 
]55 
public66 

InputModel66 
Input66 
{66  !
get66" %
;66% &
set66' *
;66* +
}66, -
public<< 
string<< 
	ReturnUrl<< 
{<<  !
get<<" %
;<<% &
set<<' *
;<<* +
}<<, -
publicBB 
IListBB 
<BB  
AuthenticationSchemeBB )
>BB) *
ExternalLoginsBB+ 9
{BB: ;
getBB< ?
;BB? @
setBBA D
;BBD E
}BBF G
publicHH 
classHH 

InputModelHH 
{II 	
[NN 
RequiredNN 
]NN 
[OO 
EmailAddressOO 
]OO 
[PP 
DisplayPP 
(PP 
NamePP 
=PP 
$strPP #
)PP# $
]PP$ %
publicQQ 
stringQQ 
EmailQQ 
{QQ  !
getQQ" %
;QQ% &
setQQ' *
;QQ* +
}QQ, -
[WW 
RequiredWW 
]WW 
[XX 
StringLengthXX 
(XX 
$numXX 
,XX 
ErrorMessageXX +
=XX, -
$strXX. l
,XXl m
MinimumLengthXXn {
=XX| }
$numXX~ 
)	XX Ä
]
XXÄ Å
[YY 
DataTypeYY 
(YY 
DataTypeYY 
.YY 
PasswordYY '
)YY' (
]YY( )
[ZZ 
DisplayZZ 
(ZZ 
NameZZ 
=ZZ 
$strZZ &
)ZZ& '
]ZZ' (
public[[ 
string[[ 
Password[[ "
{[[# $
get[[% (
;[[( )
set[[* -
;[[- .
}[[/ 0
[aa 
DataTypeaa 
(aa 
DataTypeaa 
.aa 
Passwordaa '
)aa' (
]aa( )
[bb 
Displaybb 
(bb 
Namebb 
=bb 
$strbb .
)bb. /
]bb/ 0
[cc 
Comparecc 
(cc 
$strcc 
,cc  
ErrorMessagecc! -
=cc. /
$strcc0 f
)ccf g
]ccg h
publicdd 
stringdd 
ConfirmPassworddd )
{dd* +
getdd, /
;dd/ 0
setdd1 4
;dd4 5
}dd6 7
[ff 
Requiredff 
]ff 
[gg 
StringLengthgg 
(gg 
$numgg 
,gg 
ErrorMessagegg *
=gg+ ,
$strgg- k
,ggk l
MinimumLengthggm z
=gg{ |
$numgg} ~
)gg~ 
]	gg Ä
[hh 
Displayhh 
(hh 
Namehh 
=hh 
$strhh &
)hh& '
]hh' (
publicii 
stringii 
Usernameii "
{ii# $
getii% (
;ii( )
setii* -
;ii- .
}ii/ 0
}jj 	
publicmm 
asyncmm 
Taskmm 

OnGetAsyncmm $
(mm$ %
stringmm% +
	returnUrlmm, 5
=mm6 7
nullmm8 <
)mm< =
{nn 	
	ReturnUrloo 
=oo 
	returnUrloo !
;oo! "
ExternalLoginspp 
=pp 
(pp 
awaitpp #
_signInManagerpp$ 2
.pp2 31
%GetExternalAuthenticationSchemesAsyncpp3 X
(ppX Y
)ppY Z
)ppZ [
.pp[ \
ToListpp\ b
(ppb c
)ppc d
;ppd e
}qq 	
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (
OnPostAsyncss) 4
(ss4 5
stringss5 ;
	returnUrlss< E
=ssF G
nullssH L
)ssL M
{tt 	
	returnUrluu 
??=uu 
Urluu 
.uu 
Contentuu %
(uu% &
$struu& *
)uu* +
;uu+ ,
ExternalLoginsvv 
=vv 
(vv 
awaitvv #
_signInManagervv$ 2
.vv2 31
%GetExternalAuthenticationSchemesAsyncvv3 X
(vvX Y
)vvY Z
)vvZ [
.vv[ \
ToListvv\ b
(vvb c
)vvc d
;vvd e
ifww 
(ww 

ModelStateww 
.ww 
IsValidww "
)ww" #
{xx 
varyy 
useryy 
=yy 

CreateUseryy %
(yy% &
)yy& '
;yy' (
await{{ 

_userStore{{  
.{{  !
SetUserNameAsync{{! 1
({{1 2
user{{2 6
,{{6 7
Input{{8 =
.{{= >
Username{{> F
,{{F G
CancellationToken{{H Y
.{{Y Z
None{{Z ^
){{^ _
;{{_ `
await|| 
_emailStore|| !
.||! "
SetEmailAsync||" /
(||/ 0
user||0 4
,||4 5
Input||6 ;
.||; <
Email||< A
,||A B
CancellationToken||C T
.||T U
None||U Y
)||Y Z
;||Z [
var}} 
result}} 
=}} 
await}} "
_userManager}}# /
.}}/ 0
CreateAsync}}0 ;
(}}; <
user}}< @
,}}@ A
Input}}B G
.}}G H
Password}}H P
)}}P Q
;}}Q R
if 
( 
result 
. 
	Succeeded $
)$ %
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 
LogInformation
ÅÅ *
(
ÅÅ* +
$str
ÅÅ+ V
)
ÅÅV W
;
ÅÅW X
var
ÉÉ 
userId
ÉÉ 
=
ÉÉ  
await
ÉÉ! &
_userManager
ÉÉ' 3
.
ÉÉ3 4
GetUserIdAsync
ÉÉ4 B
(
ÉÉB C
user
ÉÉC G
)
ÉÉG H
;
ÉÉH I
var
ÑÑ 
code
ÑÑ 
=
ÑÑ 
await
ÑÑ $
_userManager
ÑÑ% 1
.
ÑÑ1 21
#GenerateEmailConfirmationTokenAsync
ÑÑ2 U
(
ÑÑU V
user
ÑÑV Z
)
ÑÑZ [
;
ÑÑ[ \
code
ÖÖ 
=
ÖÖ 
WebEncoders
ÖÖ &
.
ÖÖ& '
Base64UrlEncode
ÖÖ' 6
(
ÖÖ6 7
Encoding
ÖÖ7 ?
.
ÖÖ? @
UTF8
ÖÖ@ D
.
ÖÖD E
GetBytes
ÖÖE M
(
ÖÖM N
code
ÖÖN R
)
ÖÖR S
)
ÖÖS T
;
ÖÖT U
var
ÜÜ 
callbackUrl
ÜÜ #
=
ÜÜ$ %
Url
ÜÜ& )
.
ÜÜ) *
Page
ÜÜ* .
(
ÜÜ. /
$str
áá /
,
áá/ 0
pageHandler
àà #
:
àà# $
null
àà% )
,
àà) *
values
ââ 
:
ââ 
new
ââ  #
{
ââ$ %
area
ââ& *
=
ââ+ ,
$str
ââ- 7
,
ââ7 8
userId
ââ9 ?
=
ââ@ A
userId
ââB H
,
ââH I
code
ââJ N
=
ââO P
code
ââQ U
,
ââU V
	returnUrl
ââW `
=
ââa b
	returnUrl
ââc l
}
ââm n
,
âân o
protocol
ää  
:
ää  !
Request
ää" )
.
ää) *
Scheme
ää* 0
)
ää0 1
;
ää1 2
await
åå 
_emailSender
åå &
.
åå& '
SendEmailAsync
åå' 5
(
åå5 6
Input
åå6 ;
.
åå; <
Email
åå< A
,
ååA B
$str
ååC W
,
ååW X
$"
çç 
$str
çç B
{
ççB C
HtmlEncoder
ççC N
.
ççN O
Default
ççO V
.
ççV W
Encode
ççW ]
(
çç] ^
callbackUrl
çç^ i
)
ççi j
}
ççj k
$str
ççk 
"çç Ä
)ççÄ Å
;ççÅ Ç
if
èè 
(
èè 
_userManager
èè $
.
èè$ %
Options
èè% ,
.
èè, -
SignIn
èè- 3
.
èè3 4%
RequireConfirmedAccount
èè4 K
)
èèK L
{
êê 
return
ëë 
RedirectToPage
ëë -
(
ëë- .
$str
ëë. D
,
ëëD E
new
ëëF I
{
ëëJ K
email
ëëL Q
=
ëëR S
Input
ëëT Y
.
ëëY Z
Email
ëëZ _
,
ëë_ `
	returnUrl
ëëa j
=
ëëk l
	returnUrl
ëëm v
}
ëëw x
)
ëëx y
;
ëëy z
}
íí 
else
ìì 
{
îî 
await
ïï 
_signInManager
ïï ,
.
ïï, -
SignInAsync
ïï- 8
(
ïï8 9
user
ïï9 =
,
ïï= >
isPersistent
ïï? K
:
ïïK L
false
ïïM R
)
ïïR S
;
ïïS T
return
ññ 
LocalRedirect
ññ ,
(
ññ, -
	returnUrl
ññ- 6
)
ññ6 7
;
ññ7 8
}
óó 
}
òò 
foreach
ôô 
(
ôô 
var
ôô 
error
ôô "
in
ôô# %
result
ôô& ,
.
ôô, -
Errors
ôô- 3
)
ôô3 4
{
öö 
if
õõ 
(
õõ 
error
õõ 
.
õõ 
Code
õõ "
==
õõ# %
$str
õõ& 8
)
õõ8 9
{
úú 

ModelState
ùù "
.
ùù" #
AddModelError
ùù# 0
(
ùù0 1
$str
ùù1 A
,
ùùA B
$str
ùùC 
)ùù Ä
;ùùÄ Å
}
ûû 
else
üü 
{
†† 

ModelState
°° "
.
°°" #
AddModelError
°°# 0
(
°°0 1
string
°°1 7
.
°°7 8
Empty
°°8 =
,
°°= >
error
°°? D
.
°°D E
Description
°°E P
)
°°P Q
;
°°Q R
}
¢¢ 
}
££ 
}
§§ 
return
ßß 
Page
ßß 
(
ßß 
)
ßß 
;
ßß 
}
®® 	
private
™™ 
IdentityUser
™™ 

CreateUser
™™ '
(
™™' (
)
™™( )
{
´´ 	
try
¨¨ 
{
≠≠ 
return
ÆÆ 
	Activator
ÆÆ  
.
ÆÆ  !
CreateInstance
ÆÆ! /
<
ÆÆ/ 0
IdentityUser
ÆÆ0 <
>
ÆÆ< =
(
ÆÆ= >
)
ÆÆ> ?
;
ÆÆ? @
}
ØØ 
catch
∞∞ 
{
±± 
throw
≤≤ 
new
≤≤ '
InvalidOperationException
≤≤ 3
(
≤≤3 4
$"
≤≤4 6
$str
≤≤6 S
{
≤≤S T
nameof
≤≤T Z
(
≤≤Z [
IdentityUser
≤≤[ g
)
≤≤g h
}
≤≤h i
$str
≤≤i l
"
≤≤l m
+
≤≤n o
$"
≥≥ 
$str
≥≥ #
{
≥≥# $
nameof
≥≥$ *
(
≥≥* +
IdentityUser
≥≥+ 7
)
≥≥7 8
}
≥≥8 9
$str≥≥9 ä
"≥≥ä ã
+≥≥å ç
$"
¥¥ 
$str
¥¥ a
"
¥¥a b
)
¥¥b c
;
¥¥c d
}
µµ 
}
∂∂ 	
private
∏∏ 
IUserEmailStore
∏∏ 
<
∏∏  
IdentityUser
∏∏  ,
>
∏∏, -
GetEmailStore
∏∏. ;
(
∏∏; <
)
∏∏< =
{
ππ 	
if
∫∫ 
(
∫∫ 
!
∫∫ 
_userManager
∫∫ 
.
∫∫ 
SupportsUserEmail
∫∫ /
)
∫∫/ 0
{
ªª 
throw
ºº 
new
ºº #
NotSupportedException
ºº /
(
ºº/ 0
$str
ºº0 j
)
ººj k
;
ººk l
}
ΩΩ 
return
ææ 
(
ææ 
IUserEmailStore
ææ #
<
ææ# $
IdentityUser
ææ$ 0
>
ææ0 1
)
ææ1 2

_userStore
ææ2 <
;
ææ< =
}
øø 	
}
¿¿ 
}¡¡ Å
mC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Controllers\HomeController.cs
	namespace 	 
TaskManagementSystem
 
. 
Controllers *
;* +
public 
class 
HomeController 
: 

Controller (
{ 
private		 
readonly		 
ILogger		 
<		 
HomeController		 +
>		+ ,
_logger		- 4
;		4 5
public 

HomeController 
( 
ILogger !
<! "
HomeController" 0
>0 1
logger2 8
)8 9
{ 
_logger 
= 
logger 
; 
} 
public 

IActionResult 
Index 
( 
)  
{ 
return 
View 
( 
) 
; 
} 
public 

IActionResult 
Privacy  
(  !
)! "
{ 
return 
View 
( 
) 
; 
} 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

IActionResult 
Error 
( 
)  
{ 
return 
View 
( 
new 
ErrorViewModel &
{' (
	RequestId) 2
=3 4
Activity5 =
.= >
Current> E
?E F
.F G
IdG I
??J L
HttpContextM X
.X Y
TraceIdentifierY h
}i j
)j k
;k l
} 
} Ø

sC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Controllers\StatusCodeController.cs
	namespace 	 
TaskManagementSystem
 
. 
Controllers *
;* +
public 
class  
StatusCodeController !
:" #

Controller$ .
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

IActionResult 
Index 
( 
int "
id# %
)% &
{		 
string

 
viewName

 
;

 
switch 
( 
id 
) 
{ 	
case 
$num 
: 
viewName 
= 
$str &
;& '
break 
; 
case 
$num 
: 
viewName 
= 
$str %
;% &
break 
; 
default 
: 
viewName 
= 
$str "
;" #
break 
; 
} 	
return 
View 
( 
viewName 
) 
; 
} 
} ﬁ\
mC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Controllers\TaskController.cs
	namespace 	 
TaskManagementSystem
 
. 
Controllers *
;* +
[ 
	Authorize 

]
 
public 
class 
TaskController 
: 

Controller (
{ 
private 
readonly  
ApplicationDbContext )
_context* 2
;2 3
private 
readonly 
UserManager  
<  !
IdentityUser! -
>- .
_userManager/ ;
;; <
public 

TaskController 
(  
ApplicationDbContext .
context/ 6
,6 7
UserManager8 C
<C D
IdentityUserD P
>P Q
userManagerR ]
)] ^
{ 
_context 
= 
context 
; 
_userManager 
= 
userManager "
;" #
} 
public 

async 
Task 
< 
IActionResult #
># $
Index% *
(* +
)+ ,
{ 
var 
userId 
= 
_userManager !
.! "
	GetUserId" +
(+ ,
User, 0
)0 1
;1 2
var 
tasksPlanned 
= 
await  
_context! )
.) *
TasksPlanned* 6
. 
Where 
( 
t 
=> 
t 
. 
UserId  
==! #
userId$ *
)* +
. 
ToListAsync 
( 
) 
; 
return 
View 
( 
tasksPlanned  
)  !
;! "
}   
["" 
HttpGet"" 
]"" 
public## 

IActionResult## 
Create## 
(##  
)##  !
{$$ 
return%% 
View%% 
(%% 
)%% 
;%% 
}&& 
[(( 
HttpPost(( 
](( 
[)) $
ValidateAntiForgeryToken)) 
])) 
public** 

async** 
Task** 
<** 
IActionResult** #
>**# $
Create**% +
(**+ ,
[**, -
Bind**- 1
(**1 2
$str**2 W
)**W X
]**X Y
TaskPlanned**Z e
model**f k
)**k l
{++ 

ModelState,, 
.,, 
Remove,, 
(,, 
$str,,  
),,  !
;,,! "

ModelState-- 
.-- 
Remove-- 
(-- 
$str-- "
)--" #
;--# $
if.. 

(.. 

ModelState.. 
... 
IsValid.. 
).. 
{// 	
var00 
userId00 
=00 
_userManager00 %
.00% &
	GetUserId00& /
(00/ 0
User000 4
)004 5
;005 6
if11 
(11 
userId11 
==11 
null11 
)11 
return11  &
View11' +
(11+ ,
$str11, 3
)113 4
;114 5
model22 
.22 
UserId22 
=22 
userId22 !
;22! "
_context44 
.44 
TasksPlanned44 !
.44! "
Add44" %
(44% &
model44& +
)44+ ,
;44, -
await55 
_context55 
.55 
SaveChangesAsync55 +
(55+ ,
)55, -
;55- .
return66 
RedirectToAction66 #
(66# $
nameof66$ *
(66* +
Index66+ 0
)660 1
)661 2
;662 3
}77 	
return88 
View88 
(88 
model88 
)88 
;88 
}99 
[;; 
HttpGet;; 
];; 
public<< 

async<< 
Task<< 
<<< 
IActionResult<< #
><<# $
Edit<<% )
(<<) *
int<<* -
id<<. 0
)<<0 1
{== 
var>> 
task>> 
=>> 
await>> 
_context>> !
.>>! "
TasksPlanned>>" .
.>>. /
	FindAsync>>/ 8
(>>8 9
id>>9 ;
)>>; <
;>>< =
if?? 

(?? 
task?? 
==?? 
null?? 
)?? 
{@@ 	
returnAA 

StatusCodeAA 
(AA 
$numAA !
)AA! "
;AA" #
}BB 	
varDD 
userIdDD 
=DD 
_userManagerDD !
.DD! "
	GetUserIdDD" +
(DD+ ,
UserDD, 0
)DD0 1
;DD1 2
ifEE 

(EE 
userIdEE 
==EE 
nullEE 
||EE 
taskEE "
.EE" #
UserIdEE# )
!=EE* ,
userIdEE- 3
)EE3 4
{FF 	
returnGG 

StatusCodeGG 
(GG 
$numGG !
)GG! "
;GG" #
}HH 	
returnJJ 
ViewJJ 
(JJ 
taskJJ 
)JJ 
;JJ 
}KK 
[MM 
HttpPostMM 
]MM 
[NN $
ValidateAntiForgeryTokenNN 
]NN 
publicOO 

asyncOO 
TaskOO 
<OO 
IActionResultOO #
>OO# $
EditOO% )
(OO) *
intOO* -
idOO. 0
,OO0 1
[OO2 3
BindOO3 7
(OO7 8
$strOO8 `
)OO` a
]OOa b
TaskPlannedOOc n
taskPlannedOOo z
)OOz {
{PP 
ifQQ 

(QQ 
idQQ 
!=QQ 
taskPlannedQQ 
.QQ 
IdQQ  
)QQ  !
{RR 	
returnSS 

StatusCodeSS 
(SS 
$numSS !
)SS! "
;SS" #
}TT 	
varVV 
userIdVV 
=VV 
_userManagerVV !
.VV! "
	GetUserIdVV" +
(VV+ ,
UserVV, 0
)VV0 1
;VV1 2
varWW 
existingTaskWW 
=WW 
awaitWW  
_contextWW! )
.WW) *
TasksPlannedWW* 6
.WW6 7
	FindAsyncWW7 @
(WW@ A
idWWA C
)WWC D
;WWD E
ifYY 

(YY 
existingTaskYY 
==YY 
nullYY  
)YY  !
{ZZ 	
return[[ 

StatusCode[[ 
([[ 
$num[[ !
)[[! "
;[[" #
}\\ 	
if^^ 

(^^ 
userId^^ 
==^^ 
null^^ 
||^^ 
existingTask^^ *
.^^* +
UserId^^+ 1
!=^^2 4
userId^^5 ;
)^^; <
{__ 	
return`` 

StatusCode`` 
(`` 
$num`` !
)``! "
;``" #
}aa 	

ModelStatecc 
.cc 
Removecc 
(cc 
$strcc  
)cc  !
;cc! "

ModelStatedd 
.dd 
Removedd 
(dd 
$strdd "
)dd" #
;dd# $
ifee 

(ee 

ModelStateee 
.ee 
IsValidee 
)ee 
{ff 	
trygg 
{hh 
taskPlannedii 
.ii 
UserIdii "
=ii# $
existingTaskii% 1
.ii1 2
UserIdii2 8
;ii8 9
taskPlannedjj 
.jj 
Userjj  
=jj! "
existingTaskjj# /
.jj/ 0
Userjj0 4
;jj4 5
_contextkk 
.kk 
Entrykk 
(kk 
existingTaskkk +
)kk+ ,
.kk, -
CurrentValueskk- :
.kk: ;
	SetValueskk; D
(kkD E
taskPlannedkkE P
)kkP Q
;kkQ R
awaitll 
_contextll 
.ll 
SaveChangesAsyncll /
(ll/ 0
)ll0 1
;ll1 2
}mm 
catchnn 
(nn (
DbUpdateConcurrencyExceptionnn /
)nn/ 0
{oo 
ifpp 
(pp 
!pp 

TaskExistspp 
(pp  
taskPlannedpp  +
.pp+ ,
Idpp, .
)pp. /
)pp/ 0
{qq 
returnrr 

StatusCoderr %
(rr% &
$numrr& )
)rr) *
;rr* +
}ss 
elsett 
{uu 
throwvv 
;vv 
}ww 
}xx 
returnyy 
RedirectToActionyy #
(yy# $
nameofyy$ *
(yy* +
Indexyy+ 0
)yy0 1
)yy1 2
;yy2 3
}zz 	
return{{ 
View{{ 
({{ 
taskPlanned{{ 
){{  
;{{  !
}|| 
[~~ 
HttpPost~~ 
,~~ 

ActionName~~ 
(~~ 
$str~~ "
)~~" #
]~~# $
public 

async 
Task 
< 
IActionResult #
># $
Delete% +
(+ ,
int, /
id0 2
)2 3
{
ÄÄ 
if
ÅÅ 

(
ÅÅ 
!
ÅÅ 

TaskExists
ÅÅ 
(
ÅÅ 
id
ÅÅ 
)
ÅÅ 
)
ÅÅ 
{
ÇÇ 	
return
ÉÉ 

StatusCode
ÉÉ 
(
ÉÉ 
$num
ÉÉ !
)
ÉÉ! "
;
ÉÉ" #
}
ÑÑ 	
var
ÜÜ 
task
ÜÜ 
=
ÜÜ 
await
ÜÜ 
_context
ÜÜ !
.
ÜÜ! "
TasksPlanned
ÜÜ" .
.
ÜÜ. /
	FindAsync
ÜÜ/ 8
(
ÜÜ8 9
id
ÜÜ9 ;
)
ÜÜ; <
;
ÜÜ< =
if
àà 

(
àà 
task
àà 
==
àà 
null
àà 
)
àà 
{
ââ 	
return
ää 

StatusCode
ää 
(
ää 
$num
ää !
)
ää! "
;
ää" #
}
ãã 	
var
çç 
userId
çç 
=
çç 
_userManager
çç !
.
çç! "
	GetUserId
çç" +
(
çç+ ,
User
çç, 0
)
çç0 1
;
çç1 2
if
éé 

(
éé 
task
éé 
.
éé 
UserId
éé 
!=
éé 
userId
éé !
)
éé! "
{
èè 	
return
êê 

StatusCode
êê 
(
êê 
$num
êê !
)
êê! "
;
êê" #
}
ëë 	
_context
ìì 
.
ìì 
TasksPlanned
ìì 
.
ìì 
Remove
ìì $
(
ìì$ %
task
ìì% )
)
ìì) *
;
ìì* +
await
îî 
_context
îî 
.
îî 
SaveChangesAsync
îî '
(
îî' (
)
îî( )
;
îî) *
return
ïï 
RedirectToAction
ïï 
(
ïï  
nameof
ïï  &
(
ïï& '
Index
ïï' ,
)
ïï, -
)
ïï- .
;
ïï. /
}
ññ 
private
ôô 
bool
ôô 

TaskExists
ôô 
(
ôô 
int
ôô 
id
ôô  "
)
ôô" #
{
öö 
return
õõ 
_context
õõ 
.
õõ 
TasksPlanned
õõ $
.
õõ$ %
Any
õõ% (
(
õõ( )
e
õõ) *
=>
õõ+ -
e
õõ. /
.
õõ/ 0
Id
õõ0 2
==
õõ3 5
id
õõ6 8
)
õõ8 9
;
õõ9 :
}
úú 
}ùù À
lC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Data\ApplicationDbContext.cs
	namespace 	 
TaskManagementSystem
 
. 
Data #
;# $
public 
class  
ApplicationDbContext !
:" #
IdentityDbContext$ 5
{ 
public		 
 
ApplicationDbContext		 
(		  
DbContextOptions		  0
<		0 1 
ApplicationDbContext		1 E
>		E F
options		G N
)		N O
:		P Q
base		R V
(		V W
options		W ^
)		^ _
{

 
} 
public 

virtual 
DbSet 
< 
TaskPlanned $
>$ %
TasksPlanned& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
modelBuilder9 E
)E F
{ 
base 
. 
OnModelCreating 
( 
modelBuilder )
)) *
;* +
modelBuilder 
. 
Entity 
< 
TaskPlanned '
>' (
(( )
)) *
. 
Property 
( 
t 
=> 
t 
. 
UserId #
)# $
. 

IsRequired 
( 
false 
) 
; 
modelBuilder 
. 
Entity 
< 
TaskPlanned '
>' (
(( )
)) *
. 
HasOne 
( 
t 
=> 
t 
. 
User 
)  
. 
WithMany 
( 
) 
. 
HasForeignKey 
( 
t 
=> 
t  !
.! "
UserId" (
)( )
. 

IsRequired 
( 
false 
) 
; 
} 
} £î
ÜC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Migrations\20231124222429_CreatingMigrationForTasks.cs
	namespace 	 
TaskManagementSystem
 
. 

Migrations )
{ 
public

 

partial

 
class

 %
CreatingMigrationForTasks

 2
:

3 4
	Migration

5 >
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterDatabase *
(* +
)+ ,
. 

Annotation 
( 
$str +
,+ ,
$str- 6
)6 7
;7 8
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 B
,B C
nullableD L
:L M
falseN S
)S T
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
,? @
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 D
,D E
	maxLengthF O
:O P
$numQ T
,T U
nullableV ^
:^ _
true` d
)d e
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
,? @
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ N
,N O
	maxLengthP Y
:Y Z
$num[ ^
,^ _
nullable` h
:h i
truej n
)n o
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
,? @
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB L
,L M
nullableN V
:V W
trueX \
)\ ]
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
} 
, 
constraints 
: 
table "
=># %
{   
table!! 
.!! 

PrimaryKey!! $
(!!$ %
$str!!% 5
,!!5 6
x!!7 8
=>!!9 ;
x!!< =
.!!= >
Id!!> @
)!!@ A
;!!A B
}"" 
)"" 
.## 

Annotation## 
(## 
$str## +
,##+ ,
$str##- 6
)##6 7
;##7 8
migrationBuilder%% 
.%% 
CreateTable%% (
(%%( )
name&& 
:&& 
$str&& #
,&&# $
columns'' 
:'' 
table'' 
=>'' !
new''" %
{(( 
Id)) 
=)) 
table)) 
.)) 
Column)) %
<))% &
string))& ,
>)), -
())- .
type)). 2
:))2 3
$str))4 B
,))B C
nullable))D L
:))L M
false))N S
)))S T
.** 

Annotation** #
(**# $
$str**$ 3
,**3 4
$str**5 >
)**> ?
,**? @
UserName++ 
=++ 
table++ $
.++$ %
Column++% +
<+++ ,
string++, 2
>++2 3
(++3 4
type++4 8
:++8 9
$str++: H
,++H I
	maxLength++J S
:++S T
$num++U X
,++X Y
nullable++Z b
:++b c
true++d h
)++h i
.,, 

Annotation,, #
(,,# $
$str,,$ 3
,,,3 4
$str,,5 >
),,> ?
,,,? @
NormalizedUserName-- &
=--' (
table--) .
.--. /
Column--/ 5
<--5 6
string--6 <
>--< =
(--= >
type--> B
:--B C
$str--D R
,--R S
	maxLength--T ]
:--] ^
$num--_ b
,--b c
nullable--d l
:--l m
true--n r
)--r s
... 

Annotation.. #
(..# $
$str..$ 3
,..3 4
$str..5 >
)..> ?
,..? @
Email// 
=// 
table// !
.//! "
Column//" (
<//( )
string//) /
>/// 0
(//0 1
type//1 5
://5 6
$str//7 E
,//E F
	maxLength//G P
://P Q
$num//R U
,//U V
nullable//W _
://_ `
true//a e
)//e f
.00 

Annotation00 #
(00# $
$str00$ 3
,003 4
$str005 >
)00> ?
,00? @
NormalizedEmail11 #
=11$ %
table11& +
.11+ ,
Column11, 2
<112 3
string113 9
>119 :
(11: ;
type11; ?
:11? @
$str11A O
,11O P
	maxLength11Q Z
:11Z [
$num11\ _
,11_ `
nullable11a i
:11i j
true11k o
)11o p
.22 

Annotation22 #
(22# $
$str22$ 3
,223 4
$str225 >
)22> ?
,22? @
EmailConfirmed33 "
=33# $
table33% *
.33* +
Column33+ 1
<331 2
bool332 6
>336 7
(337 8
type338 <
:33< =
$str33> J
,33J K
nullable33L T
:33T U
false33V [
)33[ \
,33\ ]
PasswordHash44  
=44! "
table44# (
.44( )
Column44) /
<44/ 0
string440 6
>446 7
(447 8
type448 <
:44< =
$str44> H
,44H I
nullable44J R
:44R S
true44T X
)44X Y
.55 

Annotation55 #
(55# $
$str55$ 3
,553 4
$str555 >
)55> ?
,55? @
SecurityStamp66 !
=66" #
table66$ )
.66) *
Column66* 0
<660 1
string661 7
>667 8
(668 9
type669 =
:66= >
$str66? I
,66I J
nullable66K S
:66S T
true66U Y
)66Y Z
.77 

Annotation77 #
(77# $
$str77$ 3
,773 4
$str775 >
)77> ?
,77? @
ConcurrencyStamp88 $
=88% &
table88' ,
.88, -
Column88- 3
<883 4
string884 :
>88: ;
(88; <
type88< @
:88@ A
$str88B L
,88L M
nullable88N V
:88V W
true88X \
)88\ ]
.99 

Annotation99 #
(99# $
$str99$ 3
,993 4
$str995 >
)99> ?
,99? @
PhoneNumber:: 
=::  !
table::" '
.::' (
Column::( .
<::. /
string::/ 5
>::5 6
(::6 7
type::7 ;
:::; <
$str::= G
,::G H
nullable::I Q
:::Q R
true::S W
)::W X
.;; 

Annotation;; #
(;;# $
$str;;$ 3
,;;3 4
$str;;5 >
);;> ?
,;;? @ 
PhoneNumberConfirmed<< (
=<<) *
table<<+ 0
.<<0 1
Column<<1 7
<<<7 8
bool<<8 <
><<< =
(<<= >
type<<> B
:<<B C
$str<<D P
,<<P Q
nullable<<R Z
:<<Z [
false<<\ a
)<<a b
,<<b c
TwoFactorEnabled== $
===% &
table==' ,
.==, -
Column==- 3
<==3 4
bool==4 8
>==8 9
(==9 :
type==: >
:==> ?
$str==@ L
,==L M
nullable==N V
:==V W
false==X ]
)==] ^
,==^ _

LockoutEnd>> 
=>>  
table>>! &
.>>& '
Column>>' -
<>>- .
DateTimeOffset>>. <
>>>< =
(>>= >
type>>> B
:>>B C
$str>>D Q
,>>Q R
nullable>>S [
:>>[ \
true>>] a
)>>a b
,>>b c
LockoutEnabled?? "
=??# $
table??% *
.??* +
Column??+ 1
<??1 2
bool??2 6
>??6 7
(??7 8
type??8 <
:??< =
$str??> J
,??J K
nullable??L T
:??T U
false??V [
)??[ \
,??\ ]
AccessFailedCount@@ %
=@@& '
table@@( -
.@@- .
Column@@. 4
<@@4 5
int@@5 8
>@@8 9
(@@9 :
type@@: >
:@@> ?
$str@@@ E
,@@E F
nullable@@G O
:@@O P
false@@Q V
)@@V W
}AA 
,AA 
constraintsBB 
:BB 
tableBB "
=>BB# %
{CC 
tableDD 
.DD 

PrimaryKeyDD $
(DD$ %
$strDD% 5
,DD5 6
xDD7 8
=>DD9 ;
xDD< =
.DD= >
IdDD> @
)DD@ A
;DDA B
}EE 
)EE 
.FF 

AnnotationFF 
(FF 
$strFF +
,FF+ ,
$strFF- 6
)FF6 7
;FF7 8
migrationBuilderHH 
.HH 
CreateTableHH (
(HH( )
nameII 
:II 
$strII (
,II( )
columnsJJ 
:JJ 
tableJJ 
=>JJ !
newJJ" %
{KK 
IdLL 
=LL 
tableLL 
.LL 
ColumnLL %
<LL% &
intLL& )
>LL) *
(LL* +
typeLL+ /
:LL/ 0
$strLL1 6
,LL6 7
nullableLL8 @
:LL@ A
falseLLB G
)LLG H
.MM 

AnnotationMM #
(MM# $
$strMM$ C
,MMC D(
MySqlValueGenerationStrategyMME a
.MMa b
IdentityColumnMMb p
)MMp q
,MMq r
RoleIdNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
stringNN* 0
>NN0 1
(NN1 2
typeNN2 6
:NN6 7
$strNN8 F
,NNF G
nullableNNH P
:NNP Q
falseNNR W
)NNW X
.OO 

AnnotationOO #
(OO# $
$strOO$ 3
,OO3 4
$strOO5 >
)OO> ?
,OO? @
	ClaimTypePP 
=PP 
tablePP  %
.PP% &
ColumnPP& ,
<PP, -
stringPP- 3
>PP3 4
(PP4 5
typePP5 9
:PP9 :
$strPP; E
,PPE F
nullablePPG O
:PPO P
truePPQ U
)PPU V
.QQ 

AnnotationQQ #
(QQ# $
$strQQ$ 3
,QQ3 4
$strQQ5 >
)QQ> ?
,QQ? @

ClaimValueRR 
=RR  
tableRR! &
.RR& '
ColumnRR' -
<RR- .
stringRR. 4
>RR4 5
(RR5 6
typeRR6 :
:RR: ;
$strRR< F
,RRF G
nullableRRH P
:RRP Q
trueRRR V
)RRV W
.SS 

AnnotationSS #
(SS# $
$strSS$ 3
,SS3 4
$strSS5 >
)SS> ?
}TT 
,TT 
constraintsUU 
:UU 
tableUU "
=>UU# %
{VV 
tableWW 
.WW 

PrimaryKeyWW $
(WW$ %
$strWW% :
,WW: ;
xWW< =
=>WW> @
xWWA B
.WWB C
IdWWC E
)WWE F
;WWF G
tableXX 
.XX 

ForeignKeyXX $
(XX$ %
nameYY 
:YY 
$strYY F
,YYF G
columnZZ 
:ZZ 
xZZ  !
=>ZZ" $
xZZ% &
.ZZ& '
RoleIdZZ' -
,ZZ- .
principalTable[[ &
:[[& '
$str[[( 5
,[[5 6
principalColumn\\ '
:\\' (
$str\\) -
,\\- .
onDelete]]  
:]]  !
ReferentialAction]]" 3
.]]3 4
Cascade]]4 ;
)]]; <
;]]< =
}^^ 
)^^ 
.__ 

Annotation__ 
(__ 
$str__ +
,__+ ,
$str__- 6
)__6 7
;__7 8
migrationBuilderaa 
.aa 
CreateTableaa (
(aa( )
namebb 
:bb 
$strbb (
,bb( )
columnscc 
:cc 
tablecc 
=>cc !
newcc" %
{dd 
Idee 
=ee 
tableee 
.ee 
Columnee %
<ee% &
intee& )
>ee) *
(ee* +
typeee+ /
:ee/ 0
$stree1 6
,ee6 7
nullableee8 @
:ee@ A
falseeeB G
)eeG H
.ff 

Annotationff #
(ff# $
$strff$ C
,ffC D(
MySqlValueGenerationStrategyffE a
.ffa b
IdentityColumnffb p
)ffp q
,ffq r
UserIdgg 
=gg 
tablegg "
.gg" #
Columngg# )
<gg) *
stringgg* 0
>gg0 1
(gg1 2
typegg2 6
:gg6 7
$strgg8 F
,ggF G
nullableggH P
:ggP Q
falseggR W
)ggW X
.hh 

Annotationhh #
(hh# $
$strhh$ 3
,hh3 4
$strhh5 >
)hh> ?
,hh? @
	ClaimTypeii 
=ii 
tableii  %
.ii% &
Columnii& ,
<ii, -
stringii- 3
>ii3 4
(ii4 5
typeii5 9
:ii9 :
$strii; E
,iiE F
nullableiiG O
:iiO P
trueiiQ U
)iiU V
.jj 

Annotationjj #
(jj# $
$strjj$ 3
,jj3 4
$strjj5 >
)jj> ?
,jj? @

ClaimValuekk 
=kk  
tablekk! &
.kk& '
Columnkk' -
<kk- .
stringkk. 4
>kk4 5
(kk5 6
typekk6 :
:kk: ;
$strkk< F
,kkF G
nullablekkH P
:kkP Q
truekkR V
)kkV W
.ll 

Annotationll #
(ll# $
$strll$ 3
,ll3 4
$strll5 >
)ll> ?
}mm 
,mm 
constraintsnn 
:nn 
tablenn "
=>nn# %
{oo 
tablepp 
.pp 

PrimaryKeypp $
(pp$ %
$strpp% :
,pp: ;
xpp< =
=>pp> @
xppA B
.ppB C
IdppC E
)ppE F
;ppF G
tableqq 
.qq 

ForeignKeyqq $
(qq$ %
namerr 
:rr 
$strrr F
,rrF G
columnss 
:ss 
xss  !
=>ss" $
xss% &
.ss& '
UserIdss' -
,ss- .
principalTablett &
:tt& '
$strtt( 5
,tt5 6
principalColumnuu '
:uu' (
$struu) -
,uu- .
onDeletevv  
:vv  !
ReferentialActionvv" 3
.vv3 4
Cascadevv4 ;
)vv; <
;vv< =
}ww 
)ww 
.xx 

Annotationxx 
(xx 
$strxx +
,xx+ ,
$strxx- 6
)xx6 7
;xx7 8
migrationBuilderzz 
.zz 
CreateTablezz (
(zz( )
name{{ 
:{{ 
$str{{ (
,{{( )
columns|| 
:|| 
table|| 
=>|| !
new||" %
{}} 
LoginProvider~~ !
=~~" #
table~~$ )
.~~) *
Column~~* 0
<~~0 1
string~~1 7
>~~7 8
(~~8 9
type~~9 =
:~~= >
$str~~? M
,~~M N
	maxLength~~O X
:~~X Y
$num~~Z ]
,~~] ^
nullable~~_ g
:~~g h
false~~i n
)~~n o
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
,? @
ProviderKey
ÄÄ 
=
ÄÄ  !
table
ÄÄ" '
.
ÄÄ' (
Column
ÄÄ( .
<
ÄÄ. /
string
ÄÄ/ 5
>
ÄÄ5 6
(
ÄÄ6 7
type
ÄÄ7 ;
:
ÄÄ; <
$str
ÄÄ= K
,
ÄÄK L
	maxLength
ÄÄM V
:
ÄÄV W
$num
ÄÄX [
,
ÄÄ[ \
nullable
ÄÄ] e
:
ÄÄe f
false
ÄÄg l
)
ÄÄl m
.
ÅÅ 

Annotation
ÅÅ #
(
ÅÅ# $
$str
ÅÅ$ 3
,
ÅÅ3 4
$str
ÅÅ5 >
)
ÅÅ> ?
,
ÅÅ? @!
ProviderDisplayName
ÇÇ '
=
ÇÇ( )
table
ÇÇ* /
.
ÇÇ/ 0
Column
ÇÇ0 6
<
ÇÇ6 7
string
ÇÇ7 =
>
ÇÇ= >
(
ÇÇ> ?
type
ÇÇ? C
:
ÇÇC D
$str
ÇÇE O
,
ÇÇO P
nullable
ÇÇQ Y
:
ÇÇY Z
true
ÇÇ[ _
)
ÇÇ_ `
.
ÉÉ 

Annotation
ÉÉ #
(
ÉÉ# $
$str
ÉÉ$ 3
,
ÉÉ3 4
$str
ÉÉ5 >
)
ÉÉ> ?
,
ÉÉ? @
UserId
ÑÑ 
=
ÑÑ 
table
ÑÑ "
.
ÑÑ" #
Column
ÑÑ# )
<
ÑÑ) *
string
ÑÑ* 0
>
ÑÑ0 1
(
ÑÑ1 2
type
ÑÑ2 6
:
ÑÑ6 7
$str
ÑÑ8 F
,
ÑÑF G
nullable
ÑÑH P
:
ÑÑP Q
false
ÑÑR W
)
ÑÑW X
.
ÖÖ 

Annotation
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ 3
,
ÖÖ3 4
$str
ÖÖ5 >
)
ÖÖ> ?
}
ÜÜ 
,
ÜÜ 
constraints
áá 
:
áá 
table
áá "
=>
áá# %
{
àà 
table
ââ 
.
ââ 

PrimaryKey
ââ $
(
ââ$ %
$str
ââ% :
,
ââ: ;
x
ââ< =
=>
ââ> @
new
ââA D
{
ââE F
x
ââG H
.
ââH I
LoginProvider
ââI V
,
ââV W
x
ââX Y
.
ââY Z
ProviderKey
ââZ e
}
ââf g
)
ââg h
;
ââh i
table
ää 
.
ää 

ForeignKey
ää $
(
ää$ %
name
ãã 
:
ãã 
$str
ãã F
,
ããF G
column
åå 
:
åå 
x
åå  !
=>
åå" $
x
åå% &
.
åå& '
UserId
åå' -
,
åå- .
principalTable
çç &
:
çç& '
$str
çç( 5
,
çç5 6
principalColumn
éé '
:
éé' (
$str
éé) -
,
éé- .
onDelete
èè  
:
èè  !
ReferentialAction
èè" 3
.
èè3 4
Cascade
èè4 ;
)
èè; <
;
èè< =
}
êê 
)
êê 
.
ëë 

Annotation
ëë 
(
ëë 
$str
ëë +
,
ëë+ ,
$str
ëë- 6
)
ëë6 7
;
ëë7 8
migrationBuilder
ìì 
.
ìì 
CreateTable
ìì (
(
ìì( )
name
îî 
:
îî 
$str
îî '
,
îî' (
columns
ïï 
:
ïï 
table
ïï 
=>
ïï !
new
ïï" %
{
ññ 
UserId
óó 
=
óó 
table
óó "
.
óó" #
Column
óó# )
<
óó) *
string
óó* 0
>
óó0 1
(
óó1 2
type
óó2 6
:
óó6 7
$str
óó8 F
,
óóF G
nullable
óóH P
:
óóP Q
false
óóR W
)
óóW X
.
òò 

Annotation
òò #
(
òò# $
$str
òò$ 3
,
òò3 4
$str
òò5 >
)
òò> ?
,
òò? @
RoleId
ôô 
=
ôô 
table
ôô "
.
ôô" #
Column
ôô# )
<
ôô) *
string
ôô* 0
>
ôô0 1
(
ôô1 2
type
ôô2 6
:
ôô6 7
$str
ôô8 F
,
ôôF G
nullable
ôôH P
:
ôôP Q
false
ôôR W
)
ôôW X
.
öö 

Annotation
öö #
(
öö# $
$str
öö$ 3
,
öö3 4
$str
öö5 >
)
öö> ?
}
õõ 
,
õõ 
constraints
úú 
:
úú 
table
úú "
=>
úú# %
{
ùù 
table
ûû 
.
ûû 

PrimaryKey
ûû $
(
ûû$ %
$str
ûû% 9
,
ûû9 :
x
ûû; <
=>
ûû= ?
new
ûû@ C
{
ûûD E
x
ûûF G
.
ûûG H
UserId
ûûH N
,
ûûN O
x
ûûP Q
.
ûûQ R
RoleId
ûûR X
}
ûûY Z
)
ûûZ [
;
ûû[ \
table
üü 
.
üü 

ForeignKey
üü $
(
üü$ %
name
†† 
:
†† 
$str
†† E
,
††E F
column
°° 
:
°° 
x
°°  !
=>
°°" $
x
°°% &
.
°°& '
RoleId
°°' -
,
°°- .
principalTable
¢¢ &
:
¢¢& '
$str
¢¢( 5
,
¢¢5 6
principalColumn
££ '
:
££' (
$str
££) -
,
££- .
onDelete
§§  
:
§§  !
ReferentialAction
§§" 3
.
§§3 4
Cascade
§§4 ;
)
§§; <
;
§§< =
table
•• 
.
•• 

ForeignKey
•• $
(
••$ %
name
¶¶ 
:
¶¶ 
$str
¶¶ E
,
¶¶E F
column
ßß 
:
ßß 
x
ßß  !
=>
ßß" $
x
ßß% &
.
ßß& '
UserId
ßß' -
,
ßß- .
principalTable
®® &
:
®®& '
$str
®®( 5
,
®®5 6
principalColumn
©© '
:
©©' (
$str
©©) -
,
©©- .
onDelete
™™  
:
™™  !
ReferentialAction
™™" 3
.
™™3 4
Cascade
™™4 ;
)
™™; <
;
™™< =
}
´´ 
)
´´ 
.
¨¨ 

Annotation
¨¨ 
(
¨¨ 
$str
¨¨ +
,
¨¨+ ,
$str
¨¨- 6
)
¨¨6 7
;
¨¨7 8
migrationBuilder
ÆÆ 
.
ÆÆ 
CreateTable
ÆÆ (
(
ÆÆ( )
name
ØØ 
:
ØØ 
$str
ØØ (
,
ØØ( )
columns
∞∞ 
:
∞∞ 
table
∞∞ 
=>
∞∞ !
new
∞∞" %
{
±± 
UserId
≤≤ 
=
≤≤ 
table
≤≤ "
.
≤≤" #
Column
≤≤# )
<
≤≤) *
string
≤≤* 0
>
≤≤0 1
(
≤≤1 2
type
≤≤2 6
:
≤≤6 7
$str
≤≤8 F
,
≤≤F G
nullable
≤≤H P
:
≤≤P Q
false
≤≤R W
)
≤≤W X
.
≥≥ 

Annotation
≥≥ #
(
≥≥# $
$str
≥≥$ 3
,
≥≥3 4
$str
≥≥5 >
)
≥≥> ?
,
≥≥? @
LoginProvider
¥¥ !
=
¥¥" #
table
¥¥$ )
.
¥¥) *
Column
¥¥* 0
<
¥¥0 1
string
¥¥1 7
>
¥¥7 8
(
¥¥8 9
type
¥¥9 =
:
¥¥= >
$str
¥¥? M
,
¥¥M N
	maxLength
¥¥O X
:
¥¥X Y
$num
¥¥Z ]
,
¥¥] ^
nullable
¥¥_ g
:
¥¥g h
false
¥¥i n
)
¥¥n o
.
µµ 

Annotation
µµ #
(
µµ# $
$str
µµ$ 3
,
µµ3 4
$str
µµ5 >
)
µµ> ?
,
µµ? @
Name
∂∂ 
=
∂∂ 
table
∂∂  
.
∂∂  !
Column
∂∂! '
<
∂∂' (
string
∂∂( .
>
∂∂. /
(
∂∂/ 0
type
∂∂0 4
:
∂∂4 5
$str
∂∂6 D
,
∂∂D E
	maxLength
∂∂F O
:
∂∂O P
$num
∂∂Q T
,
∂∂T U
nullable
∂∂V ^
:
∂∂^ _
false
∂∂` e
)
∂∂e f
.
∑∑ 

Annotation
∑∑ #
(
∑∑# $
$str
∑∑$ 3
,
∑∑3 4
$str
∑∑5 >
)
∑∑> ?
,
∑∑? @
Value
∏∏ 
=
∏∏ 
table
∏∏ !
.
∏∏! "
Column
∏∏" (
<
∏∏( )
string
∏∏) /
>
∏∏/ 0
(
∏∏0 1
type
∏∏1 5
:
∏∏5 6
$str
∏∏7 A
,
∏∏A B
nullable
∏∏C K
:
∏∏K L
true
∏∏M Q
)
∏∏Q R
.
ππ 

Annotation
ππ #
(
ππ# $
$str
ππ$ 3
,
ππ3 4
$str
ππ5 >
)
ππ> ?
}
∫∫ 
,
∫∫ 
constraints
ªª 
:
ªª 
table
ªª "
=>
ªª# %
{
ºº 
table
ΩΩ 
.
ΩΩ 

PrimaryKey
ΩΩ $
(
ΩΩ$ %
$str
ΩΩ% :
,
ΩΩ: ;
x
ΩΩ< =
=>
ΩΩ> @
new
ΩΩA D
{
ΩΩE F
x
ΩΩG H
.
ΩΩH I
UserId
ΩΩI O
,
ΩΩO P
x
ΩΩQ R
.
ΩΩR S
LoginProvider
ΩΩS `
,
ΩΩ` a
x
ΩΩb c
.
ΩΩc d
Name
ΩΩd h
}
ΩΩi j
)
ΩΩj k
;
ΩΩk l
table
ææ 
.
ææ 

ForeignKey
ææ $
(
ææ$ %
name
øø 
:
øø 
$str
øø F
,
øøF G
column
¿¿ 
:
¿¿ 
x
¿¿  !
=>
¿¿" $
x
¿¿% &
.
¿¿& '
UserId
¿¿' -
,
¿¿- .
principalTable
¡¡ &
:
¡¡& '
$str
¡¡( 5
,
¡¡5 6
principalColumn
¬¬ '
:
¬¬' (
$str
¬¬) -
,
¬¬- .
onDelete
√√  
:
√√  !
ReferentialAction
√√" 3
.
√√3 4
Cascade
√√4 ;
)
√√; <
;
√√< =
}
ƒƒ 
)
ƒƒ 
.
≈≈ 

Annotation
≈≈ 
(
≈≈ 
$str
≈≈ +
,
≈≈+ ,
$str
≈≈- 6
)
≈≈6 7
;
≈≈7 8
migrationBuilder
«« 
.
«« 
CreateTable
«« (
(
««( )
name
»» 
:
»» 
$str
»» $
,
»»$ %
columns
…… 
:
…… 
table
…… 
=>
…… !
new
……" %
{
   
Id
ÀÀ 
=
ÀÀ 
table
ÀÀ 
.
ÀÀ 
Column
ÀÀ %
<
ÀÀ% &
int
ÀÀ& )
>
ÀÀ) *
(
ÀÀ* +
type
ÀÀ+ /
:
ÀÀ/ 0
$str
ÀÀ1 6
,
ÀÀ6 7
nullable
ÀÀ8 @
:
ÀÀ@ A
false
ÀÀB G
)
ÀÀG H
.
ÃÃ 

Annotation
ÃÃ #
(
ÃÃ# $
$str
ÃÃ$ C
,
ÃÃC D*
MySqlValueGenerationStrategy
ÃÃE a
.
ÃÃa b
IdentityColumn
ÃÃb p
)
ÃÃp q
,
ÃÃq r
Title
ÕÕ 
=
ÕÕ 
table
ÕÕ !
.
ÕÕ! "
Column
ÕÕ" (
<
ÕÕ( )
string
ÕÕ) /
>
ÕÕ/ 0
(
ÕÕ0 1
type
ÕÕ1 5
:
ÕÕ5 6
$str
ÕÕ7 E
,
ÕÕE F
	maxLength
ÕÕG P
:
ÕÕP Q
$num
ÕÕR U
,
ÕÕU V
nullable
ÕÕW _
:
ÕÕ_ `
false
ÕÕa f
)
ÕÕf g
.
ŒŒ 

Annotation
ŒŒ #
(
ŒŒ# $
$str
ŒŒ$ 3
,
ŒŒ3 4
$str
ŒŒ5 >
)
ŒŒ> ?
,
ŒŒ? @
Description
œœ 
=
œœ  !
table
œœ" '
.
œœ' (
Column
œœ( .
<
œœ. /
string
œœ/ 5
>
œœ5 6
(
œœ6 7
type
œœ7 ;
:
œœ; <
$str
œœ= G
,
œœG H
nullable
œœI Q
:
œœQ R
false
œœS X
)
œœX Y
.
–– 

Annotation
–– #
(
––# $
$str
––$ 3
,
––3 4
$str
––5 >
)
––> ?
,
––? @
Deadline
—— 
=
—— 
table
—— $
.
——$ %
Column
——% +
<
——+ ,
DateTime
——, 4
>
——4 5
(
——5 6
type
——6 :
:
——: ;
$str
——< I
,
——I J
nullable
——K S
:
——S T
false
——U Z
)
——Z [
,
——[ \
Priority
““ 
=
““ 
table
““ $
.
““$ %
Column
““% +
<
““+ ,
int
““, /
>
““/ 0
(
““0 1
type
““1 5
:
““5 6
$str
““7 <
,
““< =
nullable
““> F
:
““F G
false
““H M
)
““M N
,
““N O
UserId
”” 
=
”” 
table
”” "
.
””" #
Column
””# )
<
””) *
string
””* 0
>
””0 1
(
””1 2
type
””2 6
:
””6 7
$str
””8 F
,
””F G
nullable
””H P
:
””P Q
true
””R V
)
””V W
.
‘‘ 

Annotation
‘‘ #
(
‘‘# $
$str
‘‘$ 3
,
‘‘3 4
$str
‘‘5 >
)
‘‘> ?
}
’’ 
,
’’ 
constraints
÷÷ 
:
÷÷ 
table
÷÷ "
=>
÷÷# %
{
◊◊ 
table
ÿÿ 
.
ÿÿ 

PrimaryKey
ÿÿ $
(
ÿÿ$ %
$str
ÿÿ% 6
,
ÿÿ6 7
x
ÿÿ8 9
=>
ÿÿ: <
x
ÿÿ= >
.
ÿÿ> ?
Id
ÿÿ? A
)
ÿÿA B
;
ÿÿB C
table
ŸŸ 
.
ŸŸ 

ForeignKey
ŸŸ $
(
ŸŸ$ %
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ B
,
⁄⁄B C
column
€€ 
:
€€ 
x
€€  !
=>
€€" $
x
€€% &
.
€€& '
UserId
€€' -
,
€€- .
principalTable
‹‹ &
:
‹‹& '
$str
‹‹( 5
,
‹‹5 6
principalColumn
›› '
:
››' (
$str
››) -
)
››- .
;
››. /
}
ﬁﬁ 
)
ﬁﬁ 
.
ﬂﬂ 

Annotation
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ +
,
ﬂﬂ+ ,
$str
ﬂﬂ- 6
)
ﬂﬂ6 7
;
ﬂﬂ7 8
migrationBuilder
·· 
.
·· 
CreateIndex
·· (
(
··( )
name
‚‚ 
:
‚‚ 
$str
‚‚ 2
,
‚‚2 3
table
„„ 
:
„„ 
$str
„„ )
,
„„) *
column
‰‰ 
:
‰‰ 
$str
‰‰  
)
‰‰  !
;
‰‰! "
migrationBuilder
ÊÊ 
.
ÊÊ 
CreateIndex
ÊÊ (
(
ÊÊ( )
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ %
,
ÁÁ% &
table
ËË 
:
ËË 
$str
ËË $
,
ËË$ %
column
ÈÈ 
:
ÈÈ 
$str
ÈÈ (
,
ÈÈ( )
unique
ÍÍ 
:
ÍÍ 
true
ÍÍ 
)
ÍÍ 
;
ÍÍ 
migrationBuilder
ÏÏ 
.
ÏÏ 
CreateIndex
ÏÏ (
(
ÏÏ( )
name
ÌÌ 
:
ÌÌ 
$str
ÌÌ 2
,
ÌÌ2 3
table
ÓÓ 
:
ÓÓ 
$str
ÓÓ )
,
ÓÓ) *
column
ÔÔ 
:
ÔÔ 
$str
ÔÔ  
)
ÔÔ  !
;
ÔÔ! "
migrationBuilder
ÒÒ 
.
ÒÒ 
CreateIndex
ÒÒ (
(
ÒÒ( )
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ 2
,
ÚÚ2 3
table
ÛÛ 
:
ÛÛ 
$str
ÛÛ )
,
ÛÛ) *
column
ÙÙ 
:
ÙÙ 
$str
ÙÙ  
)
ÙÙ  !
;
ÙÙ! "
migrationBuilder
ˆˆ 
.
ˆˆ 
CreateIndex
ˆˆ (
(
ˆˆ( )
name
˜˜ 
:
˜˜ 
$str
˜˜ 1
,
˜˜1 2
table
¯¯ 
:
¯¯ 
$str
¯¯ (
,
¯¯( )
column
˘˘ 
:
˘˘ 
$str
˘˘  
)
˘˘  !
;
˘˘! "
migrationBuilder
˚˚ 
.
˚˚ 
CreateIndex
˚˚ (
(
˚˚( )
name
¸¸ 
:
¸¸ 
$str
¸¸ "
,
¸¸" #
table
˝˝ 
:
˝˝ 
$str
˝˝ $
,
˝˝$ %
column
˛˛ 
:
˛˛ 
$str
˛˛ )
)
˛˛) *
;
˛˛* +
migrationBuilder
ÄÄ 
.
ÄÄ 
CreateIndex
ÄÄ (
(
ÄÄ( )
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ %
,
ÅÅ% &
table
ÇÇ 
:
ÇÇ 
$str
ÇÇ $
,
ÇÇ$ %
column
ÉÉ 
:
ÉÉ 
$str
ÉÉ ,
,
ÉÉ, -
unique
ÑÑ 
:
ÑÑ 
true
ÑÑ 
)
ÑÑ 
;
ÑÑ 
migrationBuilder
ÜÜ 
.
ÜÜ 
CreateIndex
ÜÜ (
(
ÜÜ( )
name
áá 
:
áá 
$str
áá .
,
áá. /
table
àà 
:
àà 
$str
àà %
,
àà% &
column
ââ 
:
ââ 
$str
ââ  
)
ââ  !
;
ââ! "
}
ää 	
	protected
çç 
override
çç 
void
çç 
Down
çç  $
(
çç$ %
MigrationBuilder
çç% 5
migrationBuilder
çç6 F
)
ççF G
{
éé 	
migrationBuilder
èè 
.
èè 
	DropTable
èè &
(
èè& '
name
êê 
:
êê 
$str
êê (
)
êê( )
;
êê) *
migrationBuilder
íí 
.
íí 
	DropTable
íí &
(
íí& '
name
ìì 
:
ìì 
$str
ìì (
)
ìì( )
;
ìì) *
migrationBuilder
ïï 
.
ïï 
	DropTable
ïï &
(
ïï& '
name
ññ 
:
ññ 
$str
ññ (
)
ññ( )
;
ññ) *
migrationBuilder
òò 
.
òò 
	DropTable
òò &
(
òò& '
name
ôô 
:
ôô 
$str
ôô '
)
ôô' (
;
ôô( )
migrationBuilder
õõ 
.
õõ 
	DropTable
õõ &
(
õõ& '
name
úú 
:
úú 
$str
úú (
)
úú( )
;
úú) *
migrationBuilder
ûû 
.
ûû 
	DropTable
ûû &
(
ûû& '
name
üü 
:
üü 
$str
üü $
)
üü$ %
;
üü% &
migrationBuilder
°° 
.
°° 
	DropTable
°° &
(
°°& '
name
¢¢ 
:
¢¢ 
$str
¢¢ #
)
¢¢# $
;
¢¢$ %
migrationBuilder
§§ 
.
§§ 
	DropTable
§§ &
(
§§& '
name
•• 
:
•• 
$str
•• #
)
••# $
;
••$ %
}
¶¶ 	
}
ßß 
}®® ü
zC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Migrations\20231124224143_ChangesToHtml.cs
	namespace 	 
TaskManagementSystem
 
. 

Migrations )
{ 
public 

partial 
class 
ChangesToHtml &
:' (
	Migration) 2
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} Î
hC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Models\ErrorViewModel.cs
	namespace 	 
TaskManagementSystem
 
. 
Models %
;% &
public 
class 
ErrorViewModel 
{ 
public 

string 
? 
	RequestId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
ErrorMessage 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
ShowRequestId 
=>  
!! "
string" (
.( )
IsNullOrEmpty) 6
(6 7
	RequestId7 @
)@ A
;A B
} ∞
eC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Models\TaskPlanned.cs
	namespace 	 
TaskManagementSystem
 
. 
Models %
;% &
public 
class 
TaskPlanned 
{ 
[ 
Required 
] 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[		 
Required		 
]		 
[

 
StringLength

 
(

 
$num

 
,

 
ErrorMessage

 #
=

$ %
$str

& R
)

R S
]

S T
public 

string 
? 
Title 
{ 
get 
; 
set  #
;# $
}% &
[ 
Required 
] 
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 
Required 
] 
[ 
NotDefaultValue 
] 
public 

DateTime 
Deadline 
{ 
get "
;" #
set$ '
;' (
}) *
[ 
Required 
] 
public 

TaskPriority 
Priority  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
IdentityUser 
?  
User! %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 
enum 
TaskPriority 
{ 
Low 
, 
Medium 

,
 
High 
, 	
Critical 
} 
public   
class   $
NotDefaultValueAttribute   %
:  & '
ValidationAttribute  ( ;
{!! 
	protected"" 
override"" 
ValidationResult"" '
IsValid""( /
(""/ 0
object""0 6
?""6 7
value""8 =
,""= >
ValidationContext""? P
validationContext""Q b
)""b c
{## 
if$$ 

($$ 
value$$ 
is$$ 
DateTime$$ 
dateTimeValue$$ +
&&$$, .
dateTimeValue$$/ <
==$$= ?
DateTime$$@ H
.$$H I
MinValue$$I Q
)$$Q R
{%% 	
return&& 
new&& 
ValidationResult&& '
(&&' (
$str&&( a
)&&a b
;&&b c
}'' 	
return)) 
ValidationResult)) 
.))  
Success))  '
;))' (
}** 
}++ è9
ZC:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var		 
connectionString		 
=		 
builder		 
.		 
Configuration		 ,
.		, -
GetConnectionString		- @
(		@ A
$str		A T
)		T U
??		V X
throw

 
new

  %
InvalidOperationException

! :
(

: ;
$str

; m
)

m n
;

n o
builder 
. 
Services 
. 
AddDbContext 
<  
ApplicationDbContext 2
>2 3
(3 4
options4 ;
=>< >
options 
. 
UseMySql 
( 
connectionString %
,% &
new 
MySqlServerVersion 
( 
new "
Version# *
(* +
$num+ ,
,, -
$num. /
,/ 0
$num1 3
)3 4
)4 5
)5 6
)6 7
;7 8
builder 
. 
Services 
. 3
'AddDatabaseDeveloperPageExceptionFilter 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddDefaultIdentity #
<# $
IdentityUser$ 0
>0 1
(1 2
options2 9
=>: <
options= D
.D E
SignInE K
.K L#
RequireConfirmedAccountL c
=d e
falsef k
)k l
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
bool 
dbConnected 
= 
false 
; 
int 

retryCount 
= 
$num 
; 
int 

maxRetries 
= 
$num 
; 
while 
( 
! 
dbConnected 
&& 

retryCount !
<" #

maxRetries$ .
). /
{ 
try 
{ 
using 
( 
var 
scope 
= 
app 
. 
Services '
.' (
CreateScope( 3
(3 4
)4 5
)5 6
{   	
var!! 
services!! 
=!! 
scope!!  
.!!  !
ServiceProvider!!! 0
;!!0 1
var"" 
context"" 
="" 
services"" "
.""" #
GetRequiredService""# 5
<""5 6 
ApplicationDbContext""6 J
>""J K
(""K L
)""L M
;""M N
context## 
.## 
Database## 
.## 
OpenConnection## +
(##+ ,
)##, -
;##- .
context$$ 
.$$ 
Database$$ 
.$$ 
CloseConnection$$ ,
($$, -
)$$- .
;$$. /
dbConnected%% 
=%% 
true%% 
;%% 
}&& 	
}'' 
catch(( 	
(((
 
	Exception(( 
ex(( 
)(( 
{)) 

retryCount** 
++** 
;** 
Console++ 
.++ 
	WriteLine++ 
(++ 
$"++ 
$str++ $
{++$ %

retryCount++% /
}++/ 0
$str++0 O
{++O P
ex++P R
.++R S
Message++S Z
}++Z [
"++[ \
)++\ ]
;++] ^
Thread,, 
.,, 
Sleep,, 
(,, 
$num,, 
),, 
;,, 
}-- 
}.. 
if00 
(00 
!00 
dbConnected00 
)00 
{11 
throw22 	
new22
 %
InvalidOperationException22 '
(22' (
$str22( ]
)22] ^
;22^ _
}33 
using66 
(66 
var66 

scope66 
=66 
app66 
.66 
Services66 
.66  
CreateScope66  +
(66+ ,
)66, -
)66- .
{77 
var88 
services88 
=88 
scope88 
.88 
ServiceProvider88 (
;88( )
var99 
context99 
=99 
services99 
.99 
GetRequiredService99 -
<99- . 
ApplicationDbContext99. B
>99B C
(99C D
)99D E
;99E F
context:: 
.:: 
Database:: 
.:: 
Migrate:: 
(:: 
):: 
;:: 
};; 
app== 
.== %
UseDeveloperExceptionPage== 
(== 
)== 
;==  
app?? 
.?? 
UseHttpMetrics?? 
(?? 
)?? 
;?? 
app@@ 
.@@ 

MapMetrics@@ 
(@@ 
)@@ 
;@@ 
ifBB 
(BB 
appBB 
.BB 
EnvironmentBB 
.BB 
IsDevelopmentBB !
(BB! "
)BB" #
)BB# $
{CC 
appDD 
.DD !
UseMigrationsEndPointDD 
(DD 
)DD 
;DD  
}EE 
elseFF 
{GG 
appHH 
.HH 
UseExceptionHandlerHH 
(HH 
$strHH )
)HH) *
;HH* +
appJJ 
.JJ 
UseHstsJJ 
(JJ 
)JJ 
;JJ 
}KK 
appMM 
.MM 
UseHttpsRedirectionMM 
(MM 
)MM 
;MM 
appNN 
.NN 
UseStaticFilesNN 
(NN 
)NN 
;NN 
appPP 
.PP 

UseRoutingPP 
(PP 
)PP 
;PP 
appQQ 
.QQ 
UseAuthenticationQQ 
(QQ 
)QQ 
;QQ 
appRR 
.RR 
UseAuthorizationRR 
(RR 
)RR 
;RR 
appTT 
.TT +
UseStatusCodePagesWithReExecuteTT #
(TT# $
$strTT$ 5
)TT5 6
;TT6 7
appVV 
.VV 
MapControllerRouteVV 
(VV 
nameWW 
:WW 	
$strWW
 
,WW 
patternXX 
:XX 
$strXX 5
)XX5 6
;XX6 7
appYY 
.YY 
MapRazorPagesYY 
(YY 
)YY 
;YY 
app[[ 
.[[ 
Run[[ 
([[ 
)[[ 	
;[[	 
