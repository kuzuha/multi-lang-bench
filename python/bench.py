import sys
import time


def easy_import(target):
    return __import__(
        'script.' + target,
        globals(), locals(), ['main'], -1)


def execute(target, count):
    start = time.time()
    for do_run in xrange(count):
        target.main()
    return time.time() - start


def main():
    count = int(sys.argv[1])
    blank = easy_import("blank")
    fix_time = execute(blank, count)

    for target_name in sys.argv[2:]:
        target = easy_import(target_name)
        time = execute(target, count)
        print "# %s" % target_name
        print "## %f" % (time - fix_time)

if __name__ == "__main__":
    main()
