�<
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
lockoutOnFailure	ssx �
:
ss� �
false
ss� �
)
ss� �
;
ss� �
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
�� 
RedirectToPage
�� )
(
��) *
$str
��* 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
$str
��; S
)
��S T
;
��T U
return
�� 
Page
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �o
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
)	XX �
]
XX� �
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
]	gg �
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
�� 
_logger
�� 
.
�� 
LogInformation
�� *
(
��* +
$str
��+ V
)
��V W
;
��W X
var
�� 
userId
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4
GetUserIdAsync
��4 B
(
��B C
user
��C G
)
��G H
;
��H I
var
�� 
code
�� 
=
�� 
await
�� $
_userManager
��% 1
.
��1 21
#GenerateEmailConfirmationTokenAsync
��2 U
(
��U V
user
��V Z
)
��Z [
;
��[ \
code
�� 
=
�� 
WebEncoders
�� &
.
��& '
Base64UrlEncode
��' 6
(
��6 7
Encoding
��7 ?
.
��? @
UTF8
��@ D
.
��D E
GetBytes
��E M
(
��M N
code
��N R
)
��R S
)
��S T
;
��T U
var
�� 
callbackUrl
�� #
=
��$ %
Url
��& )
.
��) *
Page
��* .
(
��. /
$str
�� /
,
��/ 0
pageHandler
�� #
:
��# $
null
��% )
,
��) *
values
�� 
:
�� 
new
��  #
{
��$ %
area
��& *
=
��+ ,
$str
��- 7
,
��7 8
userId
��9 ?
=
��@ A
userId
��B H
,
��H I
code
��J N
=
��O P
code
��Q U
,
��U V
	returnUrl
��W `
=
��a b
	returnUrl
��c l
}
��m n
,
��n o
protocol
��  
:
��  !
Request
��" )
.
��) *
Scheme
��* 0
)
��0 1
;
��1 2
await
�� 
_emailSender
�� &
.
��& '
SendEmailAsync
��' 5
(
��5 6
Input
��6 ;
.
��; <
Email
��< A
,
��A B
$str
��C W
,
��W X
$"
�� 
$str
�� B
{
��B C
HtmlEncoder
��C N
.
��N O
Default
��O V
.
��V W
Encode
��W ]
(
��] ^
callbackUrl
��^ i
)
��i j
}
��j k
$str
��k 
"�� �
)��� �
;��� �
if
�� 
(
�� 
_userManager
�� $
.
��$ %
Options
��% ,
.
��, -
SignIn
��- 3
.
��3 4%
RequireConfirmedAccount
��4 K
)
��K L
{
�� 
return
�� 
RedirectToPage
�� -
(
��- .
$str
��. D
,
��D E
new
��F I
{
��J K
email
��L Q
=
��R S
Input
��T Y
.
��Y Z
Email
��Z _
,
��_ `
	returnUrl
��a j
=
��k l
	returnUrl
��m v
}
��w x
)
��x y
;
��y z
}
�� 
else
�� 
{
�� 
await
�� 
_signInManager
�� ,
.
��, -
SignInAsync
��- 8
(
��8 9
user
��9 =
,
��= >
isPersistent
��? K
:
��K L
false
��M R
)
��R S
;
��S T
return
�� 
LocalRedirect
�� ,
(
��, -
	returnUrl
��- 6
)
��6 7
;
��7 8
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 
if
�� 
(
�� 
error
�� 
.
�� 
Code
�� "
==
��# %
$str
��& 8
)
��8 9
{
�� 

ModelState
�� "
.
��" #
AddModelError
��# 0
(
��0 1
$str
��1 A
,
��A B
$str
��C 
)�� �
;��� �
}
�� 
else
�� 
{
�� 

ModelState
�� "
.
��" #
AddModelError
��# 0
(
��0 1
string
��1 7
.
��7 8
Empty
��8 =
,
��= >
error
��? D
.
��D E
Description
��E P
)
��P Q
;
��Q R
}
�� 
}
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
IdentityUser
�� 

CreateUser
�� '
(
��' (
)
��( )
{
�� 	
try
�� 
{
�� 
return
�� 
	Activator
��  
.
��  !
CreateInstance
��! /
<
��/ 0
IdentityUser
��0 <
>
��< =
(
��= >
)
��> ?
;
��? @
}
�� 
catch
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
$str
��6 S
{
��S T
nameof
��T Z
(
��Z [
IdentityUser
��[ g
)
��g h
}
��h i
$str
��i l
"
��l m
+
��n o
$"
�� 
$str
�� #
{
��# $
nameof
��$ *
(
��* +
IdentityUser
��+ 7
)
��7 8
}
��8 9
$str��9 �
"��� �
+��� �
$"
�� 
$str
�� a
"
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
private
�� 
IUserEmailStore
�� 
<
��  
IdentityUser
��  ,
>
��, -
GetEmailStore
��. ;
(
��; <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� 
_userManager
�� 
.
�� 
SupportsUserEmail
�� /
)
��/ 0
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� /
(
��/ 0
$str
��0 j
)
��j k
;
��k l
}
�� 
return
�� 
(
�� 
IUserEmailStore
�� #
<
��# $
IdentityUser
��$ 0
>
��0 1
)
��1 2

_userStore
��2 <
;
��< =
}
�� 	
}
�� 
}�� �
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
} �

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
} �\
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
�� 
if
�� 

(
�� 
!
�� 

TaskExists
�� 
(
�� 
id
�� 
)
�� 
)
�� 
{
�� 	
return
�� 

StatusCode
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
}
�� 	
var
�� 
task
�� 
=
�� 
await
�� 
_context
�� !
.
��! "
TasksPlanned
��" .
.
��. /
	FindAsync
��/ 8
(
��8 9
id
��9 ;
)
��; <
;
��< =
if
�� 

(
�� 
task
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
return
�� 

StatusCode
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
}
�� 	
var
�� 
userId
�� 
=
�� 
_userManager
�� !
.
��! "
	GetUserId
��" +
(
��+ ,
User
��, 0
)
��0 1
;
��1 2
if
�� 

(
�� 
task
�� 
.
�� 
UserId
�� 
!=
�� 
userId
�� !
)
��! "
{
�� 	
return
�� 

StatusCode
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
}
�� 	
_context
�� 
.
�� 
TasksPlanned
�� 
.
�� 
Remove
�� $
(
��$ %
task
��% )
)
��) *
;
��* +
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� '
(
��' (
)
��( )
;
��) *
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
Index
��' ,
)
��, -
)
��- .
;
��. /
}
�� 
private
�� 
bool
�� 

TaskExists
�� 
(
�� 
int
�� 
id
��  "
)
��" #
{
�� 
return
�� 
_context
�� 
.
�� 
TasksPlanned
�� $
.
��$ %
Any
��% (
(
��( )
e
��) *
=>
��+ -
e
��. /
.
��/ 0
Id
��0 2
==
��3 5
id
��6 8
)
��8 9
;
��9 :
}
�� 
}�� �
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
} ��
�C:\Dev\TaskManagementSystem\AspNetCoreTaskManagementSystem\TaskManagementSystem\Migrations\20231124222429_CreatingMigrationForTasks.cs
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
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= K
,
��K L
	maxLength
��M V
:
��V W
$num
��X [
,
��[ \
nullable
��] e
:
��e f
false
��g l
)
��l m
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @!
ProviderDisplayName
�� '
=
��( )
table
��* /
.
��/ 0
Column
��0 6
<
��6 7
string
��7 =
>
��= >
(
��> ?
type
��? C
:
��C D
$str
��E O
,
��O P
nullable
��Q Y
:
��Y Z
true
��[ _
)
��_ `
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
LoginProvider
��I V
,
��V W
x
��X Y
.
��Y Z
ProviderKey
��Z e
}
��f g
)
��g h
;
��h i
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
.
�� 

Annotation
�� 
(
�� 
$str
�� +
,
��+ ,
$str
��- 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
RoleId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 9
,
��9 :
x
��; <
=>
��= ?
new
��@ C
{
��D E
x
��F G
.
��G H
UserId
��H N
,
��N O
x
��P Q
.
��Q R
RoleId
��R X
}
��Y Z
)
��Z [
;
��[ \
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoleId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
.
�� 

Annotation
�� 
(
�� 
$str
�� +
,
��+ ,
$str
��- 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? M
,
��M N
	maxLength
��O X
:
��X Y
$num
��Z ]
,
��] ^
nullable
��_ g
:
��g h
false
��i n
)
��n o
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 D
,
��D E
	maxLength
��F O
:
��O P
$num
��Q T
,
��T U
nullable
��V ^
:
��^ _
false
��` e
)
��e f
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 A
,
��A B
nullable
��C K
:
��K L
true
��M Q
)
��Q R
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
.
�� 

Annotation
�� 
(
�� 
$str
�� +
,
��+ ,
$str
��- 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� $
,
��$ %
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ C
,
��C D*
MySqlValueGenerationStrategy
��E a
.
��a b
IdentityColumn
��b p
)
��p q
,
��q r
Title
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 E
,
��E F
	maxLength
��G P
:
��P Q
$num
��R U
,
��U V
nullable
��W _
:
��_ `
false
��a f
)
��f g
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
,
��? @
Deadline
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
DateTime
��, 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< I
,
��I J
nullable
��K S
:
��S T
false
��U Z
)
��Z [
,
��[ \
Priority
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
.
�� 

Annotation
�� #
(
��# $
$str
��$ 3
,
��3 4
$str
��5 >
)
��> ?
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 6
,
��6 7
x
��8 9
=>
��: <
x
��= >
.
��> ?
Id
��? A
)
��A B
;
��B C
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
.
�� 

Annotation
�� 
(
�� 
$str
�� +
,
��+ ,
$str
��- 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� %
,
��% &
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �
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
} �
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
} �
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
}++ �9
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
