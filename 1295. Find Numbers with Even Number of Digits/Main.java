public class Main{

    //https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
    public static void main(String[] args) {
        int[] nums = {12,345,2,6,7896};
        System.out.println(findNumbers(nums));
    }

    static int findNumbers(int[] nums) {
        int count = 0;
        for (int num : nums){
            if (even(num)){
                count++;
            }
        }

        return count;
    }

    static boolean even(int num){

        int numDigits = digit(num);

        return numDigits % 2 == 0;
    }


    static int digit(int num){
        int count = 0;
        if(num < 0){
            num *= -1;
        }

        if (num == 0){
            return 1;
        }

        while (num > 0) {
            count++;
            num /= 10;
        }
        return count;
    }
}