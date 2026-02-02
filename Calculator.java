class Sum {
    int a, b;

    Sum(int a, int b) {
        this.a = a;
        this.b = b;
    }

    void getSum() {
        int s = a + b;
        System.out.println("sum: " + s);
    }
}

class Sub {
    int a, b;

    Sub(int a, int b) {
        this.a = a;
        this.b = b;
    }

    void getSub() {
        int s = a - b;
        System.out.println("sub: " + s);
    }
}

class Calculator {
    public static void main(String args[]) {
        Sum s = new Sum(2, 4);
        s.getSum();

        Sub s1 = new Sub(4, 2);
        s1.getSub();
    }
}
