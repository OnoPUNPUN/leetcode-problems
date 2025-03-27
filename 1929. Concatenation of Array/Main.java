import java.util.Arrays;

public class Main{
    public static void main(String[] args) {
        int[] nums = {1,2,1};

        System.out.println(Arrays.toString(getConcatenation(nums)));
    }

    static int[] getConcatenation(int[] nums) {
        int[] result = new int[nums.length * 2];

        for (int i = 0; i < nums.length; i++) {
            result[i] = nums[i]; // 1 2 1
            result[i + nums.length] = nums[i];
        }
        return result;
    }

}