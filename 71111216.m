#import <Foundation/Foundation.h>

@interface Diamond : NSObject{
int r;
}
-(void)display : (int) r;
@end
point 1
@implementation Diamond
-(void)display : (int)a{
r = a;
int i,j;
for(i = 0;i<2*r-1;i++)
{
for(j = 0;j<2*r-1;j++)
{
if(i<r)
{
if(j>=r-i-1 && j<r+i)
{
printf("*");
}
else
{
printf(" ");
}
}
else
{
if(j>=i-r+1 && j<3*r-i-2)
{	
printf("*");
}
else
{
printf(" ");
}
}
}
printf("\n");
}
}

@end

int main(){
Diamond *diamond = [[Diamond alloc]init];
[diamond display:10];
return 0;
}
