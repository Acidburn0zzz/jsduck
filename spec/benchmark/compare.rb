# Compare RKelly and Esprima parser.
$:.unshift File.dirname(File.dirname(File.dirname(__FILE__))) + "/lib"
require 'jsduck/js/rkelly_adapter'
require 'rkelly'
require 'jsduck/js/esprima'
require 'pp'

code = <<-EOS
function x() {
    // Function A
    function a() {
    }
}
EOS

pp JsDuck::Js::Esprima.parse(code)
puts
pp JsDuck::Js::RKellyAdapter.new.adapt(RKelly::Parser.new.parse(code))
