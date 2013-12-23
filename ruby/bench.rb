module Bench
    def execute(target, count)
        load "#{File.dirname(__FILE__)}/script/#{target}.rb"
        target_module = eval target.capitalize

        start = Time.now
        count.times {
            target_module.main()
        }

        return Time.now - start        
    end

    module_function :execute

    count = ARGV[0].to_i
    blank = Bench.execute('blank', count)
    ARGV[1..ARGV.size - 1].each do |target|
        time = Bench.execute(target, count) - blank
        puts "# #{target}"
        puts "## #{time}"
    end
end
