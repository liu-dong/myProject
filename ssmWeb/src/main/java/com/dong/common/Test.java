package com.dong.common;

public class Test {

    public static void main(String[] args) {//主函数，程序的入口
        Test test = new Test();//实例化一个对象
//        test.twoMinPrimeNumber(20);//调用方法
        String result = test.returnString(6,"1000");
        System.out.println(result);
    }


    //判断是否是素数
    private boolean isPrimeNumber(int num){
        //根据素数的性质判断
        if (num < 2)
            return false;
        for (int i = 2; i < num; i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return  true;
    }

    private void twoMinPrimeNumber(int evenNumber){
        int x = 0, y = 0;//组成这个偶数的两个素数
        int minResult=evenNumber;//最小差值初始化 最小差值肯定不可能大于输入值
        int minResult1 = 0;
        for (int i = 0; i < evenNumber; i++) {
            if (isPrimeNumber(i) && isPrimeNumber(evenNumber - i)) {//判断是否是素数
                minResult1 = Math.abs(evenNumber - i - i);//两个素数之间的最小差值
                if(minResult1 < minResult){//比较两个素质之间最小差值的大小
                    minResult = minResult1;//把最小的一个差值存在minResult
                    x=i;
                    y=evenNumber-i;
                }
            }
        }
        System.out.println(x+","+y);//打印输出
    }

    public String returnString(int num,String str){
        return String.format("%0" + num + "d", Integer.parseInt(str));
    }
}
