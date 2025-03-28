import java.util.Arrays;

public class Main{
    // https://leetcode.com/problems/shuffle-the-array/description/
    public static void main(String[] args) {
        int[] nums = {2,5,1,3,4,7};
        System.out.println(Arrays.toString(shuffle(nums, 3)));
    }

    static int[] shuffle(int[] nums, int n) {
        int[] arr = new int[2*n];

        int count = 0;

        for (int i = 0; i < n; i++) {
            arr[count] = nums[i];
            arr[count+1] = nums[n+i];
            count += 2;
        }

        return arr;
    }
}