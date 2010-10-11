Define(div,`<`div' class="$1">
`$2'
</`div'>')
define(div2,`div(class1,div(class2,$1))')

div2(abc)
div2(def)

