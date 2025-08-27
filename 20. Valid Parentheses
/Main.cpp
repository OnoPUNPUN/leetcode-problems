#include <iostream>
using namespace std;

template <typename T>
class Stack
{
private:
    int top;
    int maxSize;
    T *arr;

    void resize()
    {
        int newSize = maxSize * 2;
        T *newArr = new T[newSize];
        for (int i = 0; i < top; i++)
        {
            newArr[i] = arr[i];
        }
        delete[] arr;
        arr = newArr;
        maxSize = newSize;
    }

public:
    Stack(int size = 2)
    {
        maxSize = size;
        arr = new T[maxSize];
        top = 0;
    }

    ~Stack()
    {
        delete[] arr;
    }

    bool isEmpty()
    {
        return (top == 0);
    }

    void push(T item)
    {
        if (top == maxSize)
            resize();
        arr[top++] = item;
    }

    void pop()
    {
        if (!isEmpty())
            top--;
    }

    T topElement()
    {
        if (isEmpty())
            throw runtime_error("Stack is empty!!");
        return arr[top - 1];
    }
};

class Solution
{
public:
    bool isValid(string s)
    {
        Stack<char> st;

        for (char c : s)
        {
            if (c == '(' || c == '{' || c == '[')
            {
                st.push(c);
            }
            else
            {
                if (st.isEmpty())
                    return false;

                char top = st.topElement();
                st.pop();

                if ((c == ')' && top != '(') ||
                    (c == '}' && top != '{') ||
                    (c == ']' && top != '['))
                {
                    return false;
                }
            }
        }
        return st.isEmpty();
    }
};