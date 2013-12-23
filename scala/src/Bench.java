import java.lang.reflect.Method;
import java.util.Calendar;

class Bench {
    static double execute(String target, long count) throws Exception {
        target = target.substring(0, 1).toUpperCase() + target.substring(1);

        @SuppressWarnings("unchecked")
        Class script = Class.forName(target);
        @SuppressWarnings("unchecked")
        final Method main = script.getMethod("main");
        final long start = Calendar.getInstance().getTimeInMillis();
        for (long i = 0; i < count; ++i) {
            main.invoke(null);
        }
        final long end = Calendar.getInstance().getTimeInMillis();
        return (end - start) / 1000.0;
    }

    public static void main(String[] args) throws Exception {
        final long count = Long.parseLong(args[0]);
        final double blank = execute("blank", count);
        for (int i = 1; i < args.length; ++i) {
            final String target = args[i];
            double time = execute(target, count) - blank;
            time = time > 0 ? time : 0;
            System.out.println("# " + target);
            System.out.println("## " + time);
        }
    }
}
