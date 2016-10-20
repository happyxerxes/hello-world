/*
 ============================================================================
 Name        : IA.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <time.h>

unsigned short a[9][9];

typedef struct BigInt{
	unsigned short *a;
	unsigned long l;//位数
	int s;//1为正，-1为负
}*Int,BigInt;

//倒置数组
void change(Int a){
	unsigned long i;
	unsigned short temp;
	unsigned long n;

	n=a->l;
	for(i=0;i<n/2;i++)
	{
	temp=a->a[i];
	a->a[i]=a->a[n-1-i];
	a->a[n-1-i]=temp;
	}
}
//比大小s1>=s2 return 1
int comp(Int s1,Int s2){
	if(s1->l>s2->l)return 1;
	if(s1->l<s2->l)return 0;
	for(unsigned long i = s1->l-1;i<9999999;i--){
		if(s1->a[i]>s2->a[i])return 1;
		if(s1->a[i]<s2->a[i])return 0;
	}
	return 1;
}
//复制s2->s1
void cp(Int s1,Int s2){
	s2->l=s1->l;
	s2->s=s1->s;
	for(unsigned long i=0;i<s1->l;i++){
		s2->a[i]=s1->a[i];
	}
}
//打印
void print(Int a){
	if(a->s==-1&&!(a->l==1&&a->a[0]==0))printf("-");
	for(unsigned long i=a->l-1;i>0;i--)printf("%d",a->a[i]);
	printf("%d\n",a->a[0]);
}
//输入输出至文件
void in(Int s1,Int s2){
	char c;
	unsigned short d;
	unsigned long i,j;



	c=getchar();
    while(c!=EOF){
    	s1->s=1;
    	s2->s=1;
//第一行
    	if(c=='+'){c=getchar();}
    	else if(c=='-'){s1->s=-1;c=getchar();}
    	else if(c<'0'||c>'9'){


    	//	err();
    		while(c!='\n')c=getchar();
    		c=getchar();
    		while(c!='\n')c=getchar();
    		c=getchar();
    		while(c!='\n')c=getchar();
    		c=getchar();//跳三行
    		err();
    		continue;
    	}//头检验
    	for(i=0;c!='\n';i++){
    		if(c<'0'||c>'9'||i>99999){
    	//	    err();
    		    while(c!='\n')c=getchar();
    		   	c=getchar();
    		   	while(c!='\n')c=getchar();
    		   	c=getchar();
    		   	while(c!='\n')c=getchar();
    	    	c=getchar();//跳三行
    	    	err();
    	    	break;
    	    }
    		s1->a[i]=c-48;
    		c=getchar();
    	}
    	if(c!='\n')continue;
    	s1->l=i;
//第二行
    	c=getchar();
    	if(c=='+'){c=getchar();}
    	else if(c=='-'){s2->s=-1;c=getchar();}
    	else if(c<'0'||c>'9'){
//    		err();
    		while(c!='\n')c=getchar();
    		c=getchar();
    		while(c!='\n')c=getchar();
    		c=getchar();//跳两行
    		err();
    		continue;
    	}//头检验
    	for(j=0;c!='\n';j++){
    		if(c<'0'||c>'9'||j>99999){
    		 //   err();
    		    while(c!='\n')c=getchar();
    		   	c=getchar();
    		   	while(c!='\n')c=getchar();
    	    	c=getchar();//跳两行
    	    	err();
    	    	break;
    	    }
    	    s2->a[j]=c-48;
    	    c=getchar();
    	}
    	if(c!='\n')continue;
    	s2->l=j;


//第三行
    	c=getchar();
    	if(c!='\n')d=getchar();
    	else {c=getchar();err();continue;}//只有回车
    	if(d!='\n'){
    	//	err();
    		while(d!='\n')d=getchar();
    		c=getchar();//跳一行
    		err();
    		continue;
    	}//有一个以上符号
    	if(c!='+'&&c!='-'&&c!='*'&&c!='/'){
   // 		err();
    		c=getchar();
    		err();
    		continue;//跳一行
    	}//符号有错

//格式正确
    	change(s1);
    	change(s2);
    	clear(s1);
    	clear(s2);

//    	print(s1);
//    	print(s2);
//    	double a1=clock();
    	if(c=='+'){
    		Int s3= (Int)malloc(sizeof(BigInt));
    		s3->a=(unsigned short*)calloc(100001,sizeof(unsigned short));
    		if(s1->s==1&&s2->s==1){
    			add(s1,s2,s3);
    			s3->s=1;
    		}
    		if(s1->s==-1&&s2->s==-1){
    			add(s1,s2,s3);
    			s3->s=-1;
    		}
    		if(s1->s==1&&s2->s==-1){
    			if(comp(s1,s2)==1){
    				sub(s1,s2,s3);
    				s3->s=1;
    			}
    			else{
    				sub(s2,s1,s3);
    				s3->s=-1;
    			}
    		}
    		if(s1->s==-1&&s2->s==1){
    			if(comp(s1,s2)==1){
    				sub(s1,s2,s3);
    				s3->s=-1;
    			}
    			else{
    				sub(s2,s1,s3);
    				s3->s=1;
    			}
    		}

    		print(s3);
    		free(s3->a);free(s3);
    	}
    	else if(c=='-'){
    		Int s3= (Int)malloc(sizeof(BigInt));
    		s3->a=(unsigned short*)calloc(100001,sizeof(unsigned short));
    		s2->s=-s2->s;
    		if(s1->s==1&&s2->s==1){
    			add(s1,s2,s3);
    			s3->s=1;
    		}
    		if(s1->s==-1&&s2->s==-1){
    			add(s1,s2,s3);
    			s3->s=-1;
    		}
    		if(s1->s==1&&s2->s==-1){
    			if(comp(s1,s2)==1){
    				sub(s1,s2,s3);
    				s3->s=1;
    			}
    			else{
    				sub(s2,s1,s3);
    				s3->s=-1;
    			}
    		}
    		if(s1->s==-1&&s2->s==1){
    			if(comp(s1,s2)==1){
    				sub(s1,s2,s3);
    				s3->s=-1;
    			}
    			else{
    				sub(s2,s1,s3);
    				s3->s=1;
    			}
    		}
    		print(s3);
    		free(s3->a);free(s3);
    	}
    	else if(c=='*'){
    		Int s3= (Int)malloc(sizeof(BigInt));
    		s3->a=(unsigned short*)calloc(200010,sizeof(unsigned short));

    		multi(s1,s2,s3);
    		s3->s=s1->s*s2->s;

    		print(s3);
    		free(s3->a);free(s3);
    	}
    	else if(c=='/'){
    		if((s2->l==1&&s2->a[0]==0)||(s1->s+s2->s)!=2){
    		//	err();
    			c=getchar();
    			err();
    			continue;
    		}
    		Int s3= (Int)malloc(sizeof(BigInt));
    		s3->a=(unsigned short*)calloc(100000,sizeof(unsigned short));
    		Int s4= (Int)malloc(sizeof(BigInt));
    		s4->a=(unsigned short*)calloc(100000,sizeof(unsigned short));
    		div(s1,s2,s3,s4);


    		if(s3->s==-1&&!(s3->l==1&&s3->a[0]==0))printf("-");
    		for(unsigned long i=s3->l-1;i>0;i--)printf("%d",s3->a[i]);
    		printf("%d ",s3->a[0]);
    		print(s4);
    		free(s3->a);free(s3);
    		free(s4->a);free(s4);
    	}
//    	double a2=clock();
//    	printf("%lf %lf %lf",a2,a1,a2-a1);
    	c=getchar();

    }


    return;
}

void test(){
    char *filePath = "/home/xhz/data";

    char ch = '2';
    FILE *fp;
    while ((fp = fopen(filePath, "w")) == NULL) {
        printf("无法打开文件\n");
        exit(0);
    }
    for(long i=0;i<100000;i++) {
        fputc(ch, fp); //写入文件
    }
    fclose(fp);
    return;
}
//清理首位0
void clear(Int a){
	while(a->a[a->l-1]==0&&a->l!=1)a->l--;
}
//报错
void err(){
	printf("Error Input!\n");
}


void add(Int s1,Int s2,Int s3){
	unsigned short sum,c=0;
	unsigned long i=s1->l,j=s2->l,k=0;
	Int t;
	if(s1->l<s2->l){t=s1;s1=s2;s2=t;}
	while(k<j){
		sum = s1->a[k]+s2->a[k]+c;
		if(sum>9){s3->a[k]=sum-10;c=1;}
		else {s3->a[k]=sum;c=0;}
		k++;
	}//k=j
	if(k==i&&c==1){s3->a[k]=1;s3->l=k+1;}
	else if(c==1){
		while(k<i){
			s3->a[k]=s1->a[k]+1;
			if(s3->a[k]==10)s3->a[k]=0;
			else break;
			k++;
		}
		if(k==i&&c==1){s3->a[k]=1;s3->l=k+1;}
		else {
			k++;
			while(k<i){s3->a[k]=s1->a[k];k++;}
			s3->l=k;
		}
	}
	else{
		while(k<i){s3->a[k]=s1->a[k];k++;}
		s3->l=k;
	}
	return;
}

//|s1|>|s2|
void sub(Int s1,Int s2,Int s3){
	unsigned short su,c=0;
		unsigned long i=s1->l,j=s2->l,k=0;
		while(k<j){
			su = s1->a[k]-s2->a[k]-c;
			if(su>10){s3->a[k]=su+10;c=1;}
			else {s3->a[k]=su;c=0;}
			k++;
		}//k=j
		if(c==1){
			while(k<i){
				s3->a[k]=s1->a[k]-1;
				if(s3->a[k]>10)s3->a[k]=9;
				else break;
				k++;
			}
			k++;
			while(k<i){s3->a[k]=s1->a[k];k++;}
			s3->l=k;
		}
		else{
			while(k<i){s3->a[k]=s1->a[k];k++;}
			s3->l=k;
		}
		clear(s3);
		return;
}
void multi(Int s1,Int s2,Int s3){
	unsigned long s,c=0,i,j,k;

	for(k=0;k<=s1->l+s2->l-2;k++){
		s=c;
		for(i=(k-s2->l+1>1000000000?0:k-s2->l+1),j=k-i;i<=k&&i<s1->l&&j<s2->l;i++,j=k-i){
			s+=(unsigned long)s1->a[i]*s2->a[j];
		}
		c=s/10;
		s3->a[k]=(unsigned short)(s%10);
	}
	if(c==0){s3->l=k;clear(s3);return;}
	s3->a[k]=(unsigned short)c;
	s3->l=k+1;
	clear(s3);
	return;

}
void div(Int s1,Int s2,Int s3,Int s4){
	if(comp(s1,s2)==0){
		s3->a[0]=0;
		s3->l=1;
		s3->s=1;
		cp(s1,s4);
		return;
	}

	unsigned long l1=s1->l,l2=s2->l;
	unsigned long k;
	long i;
	Int c= (Int)malloc(sizeof(BigInt));
	c->a=(unsigned short*)calloc(100000,sizeof(unsigned short));
	unsigned short* A=c->a;//保存c->a

	c->l=l2;
	c->s=1;
	c->a=c->a+99999;
	for(i=(long)(l1-1);i>=(long)(l1-l2);i--){
		*(c->a)=s1->a[i];
		c->a--;
	}
	c->a++;

	for(k=0;l1-l2-k>=0;k++){
		for(i=0;comp(c,s2)==1;i++){
			sub(c,s2,c);
		}
		s3->a[l1-l2-k]=i;

		if(l1-l2-k==0)break;
		c->l++;
		c->a--;
		*(c->a)=s1->a[l1-l2-k-1];
		clear(c);
	}
	s3->l=l1-l2+1;
    cp(c,s4);


    clear(s3);
    clear(s4);
	free(A);free(c);
	return;

}

void main(){

	Int s1= (Int)malloc(sizeof(BigInt));
	Int s2= (Int)malloc(sizeof(BigInt));
	s1->a=(unsigned short*)calloc(100000,sizeof(unsigned short));
	s2->a=(unsigned short*)calloc(100000,sizeof(unsigned short));

	in(s1,s2);

	free(s1->a);free(s1);
	free(s2->a);free(s2);
	return;
}
