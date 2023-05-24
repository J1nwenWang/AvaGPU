#include <iostream>
#include <chrono>
#include <cuda_runtime_api.h>
__device__ int gg=0;

__device__ void hiii();

__device__ void sad(){
  printf("dfewsdesw\n");
}

__device__ void jasdhij(){
  printf("dsdaa\n");
}

__device__  volatile long long buff[150];
__device__  volatile long long buff_r[150];
__device__   int ccount=0;
__device__ void save_registers_to_buffer() {
// printf("before %p\n",buff[0]);
// printf("sdds\n");
for(int i=0;i<10000000;i++){
  // break;
  asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff[0]));
  asm volatile ("mov.b64 %0, %rd1;" : "=l"(buff[1]));
  asm volatile ("mov.b64 %0, %rd2;" : "=l"(buff[2]));
  asm volatile ("mov.b64 %0, %rd3;" : "=l"(buff[3]));
  asm volatile ("mov.b64 %0, %rd4;" : "=l"(buff[4]));
  asm volatile ("mov.b64 %0, %rd5;" : "=l"(buff[5]));
  asm volatile ("mov.b64 %0, %rd6;" : "=l"(buff[6]));
  asm volatile ("mov.b64 %0, %rd7;" : "=l"(buff[7]));
  asm volatile ("mov.b64 %0, %rd8;" : "=l"(buff[8]));
  asm volatile ("mov.b64 %0, %rd9;" : "=l"(buff[9]));
  asm volatile ("mov.b64 %0, %rd10;" : "=l"(buff[10]));
  asm volatile ("mov.b64 %0, %rd11;" : "=l"(buff[11]));
  asm volatile ("mov.b64 %0, %rd12;" : "=l"(buff[12]));
  asm volatile ("mov.b64 %0, %rd13;" : "=l"(buff[13]));
  asm volatile ("mov.b64 %0, %rd14;" : "=l"(buff[14]));
  asm volatile ("mov.b64 %0, %rd15;" : "=l"(buff[15]));
  asm volatile ("mov.b64 %0, %rd16;" : "=l"(buff[16]));
  asm volatile ("mov.b64 %0, %rd17;" : "=l"(buff[17]));
  asm volatile ("mov.b64 %0, %rd18;" : "=l"(buff[18]));
  asm volatile ("mov.b64 %0, %rd19;" : "=l"(buff[19]));
  asm volatile ("mov.b64 %0, %rd20;" : "=l"(buff[20]));
  asm volatile ("mov.b64 %0, %rd21;" : "=l"(buff[21]));
  asm volatile ("mov.b64 %0, %rd22;" : "=l"(buff[22]));
  asm volatile ("mov.b64 %0, %rd23;" : "=l"(buff[23]));
  asm volatile ("mov.b64 %0, %rd24;" : "=l"(buff[24]));
  asm volatile ("mov.b64 %0, %rd25;" : "=l"(buff[25]));
  asm volatile ("mov.b64 %0, %rd26;" : "=l"(buff[26]));
  asm volatile ("mov.b64 %0, %rd27;" : "=l"(buff[27]));
  asm volatile ("mov.b64 %0, %rd28;" : "=l"(buff[28]));
  asm volatile ("mov.b64 %0, %rd29;" : "=l"(buff[29]));
  asm volatile ("mov.b64 %0, %rd30;" : "=l"(buff[30]));
  asm volatile ("mov.b64 %0, %rd31;" : "=l"(buff[31]));
  asm volatile ("mov.b64 %0, %rd32;" : "=l"(buff[32]));
asm volatile ("mov.b64 %0, %rd33;" : "=l"(buff[33]));
asm volatile ("mov.b64 %0, %rd34;" : "=l"(buff[34]));
asm volatile ("mov.b64 %0, %rd35;" : "=l"(buff[35]));
asm volatile ("mov.b64 %0, %rd36;" : "=l"(buff[36]));
asm volatile ("mov.b64 %0, %rd37;" : "=l"(buff[37]));
asm volatile ("mov.b64 %0, %rd38;" : "=l"(buff[38]));
asm volatile ("mov.b64 %0, %rd39;" : "=l"(buff[39]));
asm volatile ("mov.b64 %0, %rd40;" : "=l"(buff[40]));
asm volatile ("mov.b64 %0, %rd41;" : "=l"(buff[41]));
asm volatile ("mov.b64 %0, %rd42;" : "=l"(buff[42]));
asm volatile ("mov.b64 %0, %rd43;" : "=l"(buff[43]));
asm volatile ("mov.b64 %0, %rd44;" : "=l"(buff[44]));
asm volatile ("mov.b64 %0, %rd45;" : "=l"(buff[45]));
asm volatile ("mov.b64 %0, %rd46;" : "=l"(buff[46]));
asm volatile ("mov.b64 %0, %rd47;" : "=l"(buff[47]));
asm volatile ("mov.b64 %0, %rd48;" : "=l"(buff[48]));
asm volatile ("mov.b64 %0, %rd49;" : "=l"(buff[49]));
asm volatile ("mov.b64 %0, %rd50;" : "=l"(buff[50]));
asm volatile ("mov.b64 %0, %rd51;" : "=l"(buff[51]));
asm volatile ("mov.b64 %0, %rd52;" : "=l"(buff[52]));
asm volatile ("mov.b64 %0, %rd53;" : "=l"(buff[53]));
asm volatile ("mov.b64 %0, %rd54;" : "=l"(buff[54]));
asm volatile ("mov.b64 %0, %rd55;" : "=l"(buff[55]));
asm volatile ("mov.b64 %0, %rd56;" : "=l"(buff[56]));
asm volatile ("mov.b64 %0, %rd57;" : "=l"(buff[57]));
asm volatile ("mov.b64 %0, %rd58;" : "=l"(buff[58]));
asm volatile ("mov.b64 %0, %rd59;" : "=l"(buff[59]));
asm volatile ("mov.b64 %0, %rd60;" : "=l"(buff[60]));
asm volatile ("mov.b64 %0, %rd61;" : "=l"(buff[61]));
asm volatile ("mov.b64 %0, %rd62;" : "=l"(buff[62]));
asm volatile ("mov.b64 %0, %rd63;" : "=l"(buff[63]));
asm volatile ("mov.b64 %0, %rd64;" : "=l"(buff[64]));
asm volatile ("mov.b64 %0, %rd65;" : "=l"(buff[65]));
asm volatile ("mov.b64 %0, %rd66;" : "=l"(buff[66]));
asm volatile ("mov.b64 %0, %rd67;" : "=l"(buff[67]));
asm volatile ("mov.b64 %0, %rd68;" : "=l"(buff[68]));
asm volatile ("mov.b64 %0, %rd69;" : "=l"(buff[69]));
asm volatile ("mov.b64 %0, %rd70;" : "=l"(buff[70]));
asm volatile ("mov.b64 %0, %rd71;" : "=l"(buff[71]));
asm volatile ("mov.b64 %0, %rd72;" : "=l"(buff[72]));
asm volatile ("mov.b64 %0, %rd73;" : "=l"(buff[73]));
asm volatile ("mov.b64 %0, %rd74;" : "=l"(buff[74]));
asm volatile ("mov.b64 %0, %rd75;" : "=l"(buff[75]));
asm volatile ("mov.b64 %0, %rd76;" : "=l"(buff[76]));
asm volatile ("mov.b64 %0, %rd77;" : "=l"(buff[77]));
asm volatile ("mov.b64 %0, %rd78;" : "=l"(buff[78]));
asm volatile ("mov.b64 %0, %rd79;" : "=l"(buff[79]));
asm volatile ("mov.b64 %0, %rd80;" : "=l"(buff[80]));
asm volatile ("mov.b64 %0, %rd81;" : "=l"(buff[81]));
asm volatile ("mov.b64 %0, %rd82;" : "=l"(buff[82]));
asm volatile ("mov.b64 %0, %rd83;" : "=l"(buff[83]));
asm volatile ("mov.b64 %0, %rd84;" : "=l"(buff[84]));
asm volatile ("mov.b64 %0, %rd85;" : "=l"(buff[85]));
asm volatile ("mov.b64 %0, %rd86;" : "=l"(buff[86]));
asm volatile ("mov.b64 %0, %rd87;" : "=l"(buff[87]));
asm volatile ("mov.b64 %0, %rd88;" : "=l"(buff[88]));
asm volatile ("mov.b64 %0, %rd89;" : "=l"(buff[89]));
asm volatile ("mov.b64 %0, %rd90;" : "=l"(buff[90]));
asm volatile ("mov.b64 %0, %rd91;" : "=l"(buff[91]));
asm volatile ("mov.b64 %0, %rd92;" : "=l"(buff[92]));
asm volatile ("mov.b64 %0, %rd93;" : "=l"(buff[93]));
asm volatile ("mov.b64 %0, %rd94;" : "=l"(buff[94]));
asm volatile ("mov.b64 %0, %rd95;" : "=l"(buff[95]));
asm volatile ("mov.b64 %0, %rd96;" : "=l"(buff[96]));
asm volatile ("mov.b64 %0, %rd97;" : "=l"(buff[97]));
asm volatile ("mov.b64 %0, %rd98;" : "=l"(buff[98]));
asm volatile ("mov.b64 %0, %rd99;" : "=l"(buff[99]));
asm volatile ("mov.b64 %0, %rd100;" : "=l"(buff[100]));
asm volatile ("mov.b64 %0, %rd101;" : "=l"(buff[101]));
asm volatile ("mov.b64 %0, %rd102;" : "=l"(buff[102]));
asm volatile ("mov.b64 %0, %rd103;" : "=l"(buff[103]));
asm volatile ("mov.b64 %0, %rd104;" : "=l"(buff[104]));
asm volatile ("mov.b64 %0, %rd105;" : "=l"(buff[105]));
asm volatile ("mov.b64 %0, %rd106;" : "=l"(buff[106]));
asm volatile ("mov.b64 %0, %rd107;" : "=l"(buff[107]));
asm volatile ("mov.b64 %0, %rd108;" : "=l"(buff[108]));
asm volatile ("mov.b64 %0, %rd109;" : "=l"(buff[109]));
asm volatile ("mov.b64 %0, %rd110;" : "=l"(buff[110]));
asm volatile ("mov.b64 %0, %rd111;" : "=l"(buff[111]));
asm volatile ("mov.b64 %0, %rd112;" : "=l"(buff[112]));
asm volatile ("mov.b64 %0, %rd113;" : "=l"(buff[113]));
asm volatile ("mov.b64 %0, %rd114;" : "=l"(buff[114]));
asm volatile ("mov.b64 %0, %rd115;" : "=l"(buff[115]));
asm volatile ("mov.b64 %0, %rd116;" : "=l"(buff[116]));
asm volatile ("mov.b64 %0, %rd117;" : "=l"(buff[117]));
asm volatile ("mov.b64 %0, %rd118;" : "=l"(buff[118]));
asm volatile ("mov.b64 %0, %rd119;" : "=l"(buff[119]));
asm volatile ("mov.b64 %0, %rd120;" : "=l"(buff[120]));
asm volatile ("mov.b64 %0, %rd121;" : "=l"(buff[121]));
asm volatile ("mov.b64 %0, %rd122;" : "=l"(buff[122]));
asm volatile ("mov.b64 %0, %rd123;" : "=l"(buff[123]));
asm volatile ("mov.b64 %0, %rd124;" : "=l"(buff[124]));
asm volatile ("mov.b64 %0, %rd125;" : "=l"(buff[125]));
asm volatile ("mov.b64 %0, %rd126;" : "=l"(buff[126]));
asm volatile ("mov.b64 %0, %rd127;" : "=l"(buff[127]));
asm volatile ("mov.b64 %0, %rd128;" : "=l"(buff[128]));
asm volatile ("mov.b64 %0, %rd129;" : "=l"(buff[129]));
asm volatile ("mov.b64 %0, %rd130;" : "=l"(buff[130]));
asm volatile ("mov.b64 %0, %rd131;" : "=l"(buff[131]));
asm volatile ("mov.b64 %0, %rd132;" : "=l"(buff[132]));
asm volatile ("mov.b64 %0, %rd133;" : "=l"(buff[133]));
asm volatile ("mov.b64 %0, %rd134;" : "=l"(buff[134]));
asm volatile ("mov.b64 %0, %rd135;" : "=l"(buff[135]));
asm volatile ("mov.b64 %0, %rd136;" : "=l"(buff[136]));
asm volatile ("mov.b64 %0, %rd137;" : "=l"(buff[137]));
asm volatile ("mov.b64 %0, %rd138;" : "=l"(buff[138]));
asm volatile ("mov.b64 %0, %rd139;" : "=l"(buff[139]));



//   asm volatile ("mul.wide.u32 %rd0, %r0, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[0]));
// asm volatile ("mul.wide.u32 %rd0, %r1, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[1]));
// asm volatile ("mul.wide.u32 %rd0, %r2, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[2]));
// asm volatile ("mul.wide.u32 %rd0, %r3, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[3]));
// asm volatile ("mul.wide.u32 %rd0, %r4, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[4]));
// asm volatile ("mul.wide.u32 %rd0, %r5, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[5]));
// asm volatile ("mul.wide.u32 %rd0, %r6, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[6]));
// asm volatile ("mul.wide.u32 %rd0, %r7, 1;" ::);
// asm volatile ("mov.b64 %0, %rd0;" : "=l"(buff_r[7]));
// // break;


}
for(int i=0;i<10;i++){
  break;
asm volatile ("mov.b64  %rd0,%0;" : "=l"(buff[0]));
asm volatile ("mov.b64  %rd1,%0;" : "=l"(buff[1]));
asm volatile ("mov.b64  %rd2,%0;" : "=l"(buff[2]));
asm volatile ("mov.b64  %rd3,%0;" : "=l"(buff[3]));
asm volatile ("mov.b64  %rd4,%0;" : "=l"(buff[4]));
asm volatile ("mov.b64  %rd5,%0;" : "=l"(buff[5]));
asm volatile ("mov.b64  %rd6,%0;" : "=l"(buff[6]));
asm volatile ("mov.b64  %rd7,%0;" : "=l"(buff[7]));
asm volatile ("mov.b64  %rd8,%0;" : "=l"(buff[8]));
asm volatile ("mov.b64  %rd9,%0;" : "=l"(buff[9]));
asm volatile ("mov.b64  %rd10,%0;" : "=l"(buff[10]));
asm volatile ("mov.b64  %rd11,%0;" : "=l"(buff[11]));
asm volatile ("mov.b64  %rd12,%0;" : "=l"(buff[12]));
asm volatile ("mov.b64  %rd13,%0;" : "=l"(buff[13]));
asm volatile ("mov.b64  %rd14,%0;" : "=l"(buff[14]));
asm volatile ("mov.b64  %rd15,%0;" : "=l"(buff[15]));
asm volatile ("mov.b64  %rd16,%0;" : "=l"(buff[16]));
asm volatile ("mov.b64  %rd17,%0;" : "=l"(buff[17]));
asm volatile ("mov.b64  %rd18,%0;" : "=l"(buff[18]));
asm volatile ("mov.b64  %rd19,%0;" : "=l"(buff[19]));
asm volatile ("mov.b64  %rd20,%0;" : "=l"(buff[20]));
asm volatile ("mov.b64  %rd21,%0;" : "=l"(buff[21]));
asm volatile ("mov.b64  %rd22,%0;" : "=l"(buff[22]));
asm volatile ("mov.b64  %rd23,%0;" : "=l"(buff[23]));
asm volatile ("mov.b64  %rd24,%0;" : "=l"(buff[24]));
asm volatile ("mov.b64  %rd25,%0;" : "=l"(buff[25]));
asm volatile ("mov.b64  %rd26,%0;" : "=l"(buff[26]));
asm volatile ("mov.b64  %rd27,%0;" : "=l"(buff[27]));
asm volatile ("mov.b64  %rd28,%0;" : "=l"(buff[28]));
asm volatile ("mov.b64  %rd29,%0;" : "=l"(buff[29]));
asm volatile ("mov.b64  %rd30,%0;" : "=l"(buff[30]));
asm volatile ("mov.b64  %rd31,%0;" : "=l"(buff[31]));
asm volatile ("mov.b64  %rd32,%0;" : "=l"(buff[32]));
asm volatile ("mov.b64  %rd33,%0;" : "=l"(buff[33]));
asm volatile ("mov.b64  %rd34,%0;" : "=l"(buff[34]));
asm volatile ("mov.b64  %rd35,%0;" : "=l"(buff[35]));
asm volatile ("mov.b64  %rd36,%0;" : "=l"(buff[36]));
asm volatile ("mov.b64  %rd37,%0;" : "=l"(buff[37]));
asm volatile ("mov.b64  %rd38,%0;" : "=l"(buff[38]));
asm volatile ("mov.b64  %rd39,%0;" : "=l"(buff[39]));
asm volatile ("mov.b64  %rd40,%0;" : "=l"(buff[40]));
asm volatile ("mov.b64  %rd41,%0;" : "=l"(buff[41]));
asm volatile ("mov.b64  %rd42,%0;" : "=l"(buff[42]));
asm volatile ("mov.b64  %rd43,%0;" : "=l"(buff[43]));
asm volatile ("mov.b64  %rd44,%0;" : "=l"(buff[44]));
asm volatile ("mov.b64  %rd45,%0;" : "=l"(buff[45]));
asm volatile ("mov.b64  %rd46,%0;" : "=l"(buff[46]));
asm volatile ("mov.b64  %rd47,%0;" : "=l"(buff[47]));
asm volatile ("mov.b64  %rd48,%0;" : "=l"(buff[48]));
asm volatile ("mov.b64  %rd49,%0;" : "=l"(buff[49]));
asm volatile ("mov.b64  %rd50,%0;" : "=l"(buff[50]));
asm volatile ("mov.b64  %rd51,%0;" : "=l"(buff[51]));
asm volatile ("mov.b64  %rd52,%0;" : "=l"(buff[52]));
asm volatile ("mov.b64  %rd53,%0;" : "=l"(buff[53]));
asm volatile ("mov.b64  %rd54,%0;" : "=l"(buff[54]));
asm volatile ("mov.b64  %rd55,%0;" : "=l"(buff[55]));
asm volatile ("mov.b64  %rd56,%0;" : "=l"(buff[56]));
asm volatile ("mov.b64  %rd57,%0;" : "=l"(buff[57]));
asm volatile ("mov.b64  %rd58,%0;" : "=l"(buff[58]));
asm volatile ("mov.b64  %rd59,%0;" : "=l"(buff[59]));
asm volatile ("mov.b64  %rd60,%0;" : "=l"(buff[60]));
asm volatile ("mov.b64  %rd61,%0;" : "=l"(buff[61]));
asm volatile ("mov.b64  %rd62,%0;" : "=l"(buff[62]));
asm volatile ("mov.b64  %rd63,%0;" : "=l"(buff[63]));
asm volatile ("mov.b64  %rd64,%0;" : "=l"(buff[64]));
asm volatile ("mov.b64  %rd65,%0;" : "=l"(buff[65]));
asm volatile ("mov.b64  %rd66,%0;" : "=l"(buff[66]));
asm volatile ("mov.b64  %rd67,%0;" : "=l"(buff[67]));
asm volatile ("mov.b64  %rd68,%0;" : "=l"(buff[68]));
asm volatile ("mov.b64  %rd69,%0;" : "=l"(buff[69]));
asm volatile ("mov.b64  %rd70,%0;" : "=l"(buff[70]));
asm volatile ("mov.b64  %rd71,%0;" : "=l"(buff[71]));
asm volatile ("mov.b64  %rd72,%0;" : "=l"(buff[72]));
asm volatile ("mov.b64  %rd73,%0;" : "=l"(buff[73]));
asm volatile ("mov.b64  %rd74,%0;" : "=l"(buff[74]));
asm volatile ("mov.b64  %rd75,%0;" : "=l"(buff[75]));
asm volatile ("mov.b64  %rd76,%0;" : "=l"(buff[76]));
asm volatile ("mov.b64  %rd77,%0;" : "=l"(buff[77]));
asm volatile ("mov.b64  %rd78,%0;" : "=l"(buff[78]));
asm volatile ("mov.b64  %rd79,%0;" : "=l"(buff[79]));
asm volatile ("mov.b64  %rd80,%0;" : "=l"(buff[80]));
asm volatile ("mov.b64  %rd81,%0;" : "=l"(buff[81]));
asm volatile ("mov.b64  %rd82,%0;" : "=l"(buff[82]));
asm volatile ("mov.b64  %rd83,%0;" : "=l"(buff[83]));
asm volatile ("mov.b64  %rd84,%0;" : "=l"(buff[84]));
asm volatile ("mov.b64  %rd85,%0;" : "=l"(buff[85]));
asm volatile ("mov.b64  %rd86,%0;" : "=l"(buff[86]));
asm volatile ("mov.b64  %rd87,%0;" : "=l"(buff[87]));
asm volatile ("mov.b64  %rd88,%0;" : "=l"(buff[88]));
asm volatile ("mov.b64  %rd89,%0;" : "=l"(buff[89]));
asm volatile ("mov.b64  %rd90,%0;" : "=l"(buff[90]));
asm volatile ("mov.b64  %rd91,%0;" : "=l"(buff[91]));
asm volatile ("mov.b64  %rd92,%0;" : "=l"(buff[92]));
asm volatile ("mov.b64  %rd93,%0;" : "=l"(buff[93]));
asm volatile ("mov.b64  %rd94,%0;" : "=l"(buff[94]));
asm volatile ("mov.b64  %rd95,%0;" : "=l"(buff[95]));
asm volatile ("mov.b64  %rd96,%0;" : "=l"(buff[96]));
asm volatile ("mov.b64  %rd97,%0;" : "=l"(buff[97]));
asm volatile ("mov.b64  %rd98,%0;" : "=l"(buff[98]));
asm volatile ("mov.b64  %rd99,%0;" : "=l"(buff[99]));
asm volatile ("mov.b64  %rd100,%0;" : "=l"(buff[100]));
asm volatile ("mov.b64  %rd101,%0;" : "=l"(buff[101]));
asm volatile ("mov.b64  %rd102,%0;" : "=l"(buff[102]));
asm volatile ("mov.b64  %rd103,%0;" : "=l"(buff[103]));
asm volatile ("mov.b64  %rd104,%0;" : "=l"(buff[104]));
asm volatile ("mov.b64  %rd105,%0;" : "=l"(buff[105]));
asm volatile ("mov.b64  %rd106,%0;" : "=l"(buff[106]));
asm volatile ("mov.b64  %rd107,%0;" : "=l"(buff[107]));
asm volatile ("mov.b64  %rd108,%0;" : "=l"(buff[108]));
asm volatile ("mov.b64  %rd109,%0;" : "=l"(buff[109]));
asm volatile ("mov.b64  %rd110,%0;" : "=l"(buff[110]));
asm volatile ("mov.b64  %rd111,%0;" : "=l"(buff[111]));
asm volatile ("mov.b64  %rd112,%0;" : "=l"(buff[112]));
asm volatile ("mov.b64  %rd113,%0;" : "=l"(buff[113]));
asm volatile ("mov.b64  %rd114,%0;" : "=l"(buff[114]));
asm volatile ("mov.b64  %rd115,%0;" : "=l"(buff[115]));
asm volatile ("mov.b64  %rd116,%0;" : "=l"(buff[116]));
asm volatile ("mov.b64  %rd117,%0;" : "=l"(buff[117]));
asm volatile ("mov.b64  %rd118,%0;" : "=l"(buff[118]));
asm volatile ("mov.b64  %rd119,%0;" : "=l"(buff[119]));
asm volatile ("mov.b64  %rd120,%0;" : "=l"(buff[120]));
asm volatile ("mov.b64  %rd121,%0;" : "=l"(buff[121]));
asm volatile ("mov.b64  %rd122,%0;" : "=l"(buff[122]));
asm volatile ("mov.b64  %rd123,%0;" : "=l"(buff[123]));
asm volatile ("mov.b64  %rd124,%0;" : "=l"(buff[124]));
asm volatile ("mov.b64  %rd125,%0;" : "=l"(buff[125]));
asm volatile ("mov.b64  %rd126,%0;" : "=l"(buff[126]));
asm volatile ("mov.b64  %rd127,%0;" : "=l"(buff[127]));
asm volatile ("mov.b64  %rd128,%0;" : "=l"(buff[128]));
asm volatile ("mov.b64  %rd129,%0;" : "=l"(buff[129]));
asm volatile ("mov.b64  %rd130,%0;" : "=l"(buff[130]));
asm volatile ("mov.b64  %rd131,%0;" : "=l"(buff[131]));
asm volatile ("mov.b64  %rd132,%0;" : "=l"(buff[132]));
asm volatile ("mov.b64  %rd133,%0;" : "=l"(buff[133]));
asm volatile ("mov.b64  %rd134,%0;" : "=l"(buff[134]));
asm volatile ("mov.b64  %rd135,%0;" : "=l"(buff[135]));
asm volatile ("mov.b64  %rd136,%0;" : "=l"(buff[136]));
asm volatile ("mov.b64  %rd137,%0;" : "=l"(buff[137]));
asm volatile ("mov.b64  %rd138,%0;" : "=l"(buff[138]));
asm volatile ("mov.b64  %rd307,%0;" : "=l"(buff[139]));


// asm volatile ("mov.b32  %r0, %0;" ::);

asm volatile ("mul.wide.u32 %rd0, %r1, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[1]));
asm volatile ("mul.wide.u32 %rd0, %r2, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[2]));
asm volatile ("mul.wide.u32 %rd0, %r3, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[3]));
asm volatile ("mul.wide.u32 %rd0, %r4, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[4]));
asm volatile ("mul.wide.u32 %rd0, %r5, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[5]));
asm volatile ("mul.wide.u32 %rd0, %r6, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[6]));
asm volatile ("mul.wide.u32 %rd0, %r7, 1;" ::);
asm volatile ("mov.b64 %rd0, %0;" : "=l"(buff_r[7]));

// asm volatile ("mov.u32 %r0, %0;" : "=l"(buff_r[7]));
}


// printf("after %p\n",buff[0]);

}

__device__ void hiii() {
  long buffss[128];
  save_registers_to_buffer();

  gg++;
  if(gg>1){
    return;
  }
  void* ww;
  void * save;
   void* old;
   void* newa;
  // save=0x123;
 long buff[100];

  // long sad[100];
  // buff
  //  asm("mov.u64 %rd1, SP;" : "=l"(ww));
  long d=93;

  asm("mov.u64	%0, %SP;": "=l"(ww));
  asm("mov.u64	%0, %rd1;": "=l"(save));
  asm("mov.u64	%rd1, %0;": "=l"(d));
  asm("mov.u64	%0, %rd1;": "=l"(newa));
  asm("mov.u64	%rd1, %0;": "=l"(save));
  asm("mov.u64	%0, %rd1;": "=l"(old));
  printf("old r is  %lu : %lu: %lu \n",save,newa, old);

  //  asm("mov.u64	 %r1,%0;": "=l"(buff));


  
  //  mov.u64 %rd1, SP;
  printf("dcsd %u %d\n",ww,d);
  hiii();
}

__global__ void axpy(float a, float* x, float* y) {
  // y[threadIdx.x] = a * x[threadIdx.x];
  // int current_processed_thread_cnt = atomicAdd(&ccount, 1);
  // if(current_processed_thread_cnt>=473088)
  // printf("%lu\n",current_processed_thread_cnt);
  // ccount++;
  save_registers_to_buffer();
  
    
}

int main(int argc, char* argv[]) {
  const int kDataLen = 1600;

  float a = 2.0f;
  float host_x[kDataLen] = {1.0f, 2.0f, 3.0f, 4.0f};
  float host_y[kDataLen];

  // Copy input data to device.
  float* device_x;
  float* device_y;
  cudaMalloc(&device_x, kDataLen * sizeof(float));
  cudaMalloc(&device_y, kDataLen * sizeof(float));
  cudaMemcpy(device_x, host_x, kDataLen * sizeof(float),
             cudaMemcpyHostToDevice);

  // Launch the kernel.
  // axpy<<<1, kDataLen>>>(a, device_x, device_y);
   dim3 dimGrid(43, 43,1);  
     dim3 dimBlock(16, 16,1);
      int deviceId = 0;

   cudaDeviceProp props;

  cudaGetDeviceProperties(&props, deviceId);

  // dim3 maxGridSize(props.maxGridSize[0], props.maxGridSize[1], props.maxGridSize[2]);
   dim3 maxGridSize(1, 1,1);
  dim3 maxBlockSize(props.maxThreadsDim[0], props.maxThreadsDim[1], props.maxThreadsDim[2]);

printf("Maximum grid size: (%d, %d, %d)\n", maxGridSize.x, maxGridSize.y, maxGridSize.z);
  printf("Maximum block size: (%d, %d, %d)\n", maxBlockSize.x, maxBlockSize.y, maxBlockSize.z);
 axpy<<<dimGrid, dimBlock>>>(a, device_x, device_y);
//  printf("sdcs\n");
  // Copy output data to host.
  cudaDeviceSynchronize();
  cudaMemcpy(host_y, device_y, kDataLen * sizeof(float),
             cudaMemcpyDeviceToHost);

  // Print the results.
  for (int i = 0; i < kDataLen; ++i) {
    // std::cout << "y[" << i << "] = " << host_y[i] << "\n";
  }

  cudaDeviceReset();
  return 0;
}