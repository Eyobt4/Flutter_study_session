void main(){
var numbers = [1,8,3,3,4,45,5,69,10,39,91,10];

//1
int max = 0;
for(int number in numbers){
  if(number>max){
    max=number;
  }
}
print(max);

//2
int min = 0;
for(int number in numbers){
  if(number<min){
    min=number;
  }
}
print(min);

//3
int sum = 0;
for(int number in numbers){
  sum+=number;
}
print(sum);

//4
double avg = 0;
int summ = 0;
int len = numbers.length;
for(int number in numbers){
  summ+=number;
}
avg = summ/len;
print(avg);





}
