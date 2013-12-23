import sys
import time


def execute(target, count):
    start = time.time()
    for do_run in xrange(count):
        target.main()
    return time.time() - start


def main():
    count = int(sys.argv[1])
    use_lib = sys.argv[2]
    target = __import__(
        'script.' + use_lib,
        globals(), locals(), ['main'], -1)
    time = execute(target, count)
    print "# %s" % use_lib
    print "## %f" % time


if __name__ == "__main__":
    main()
