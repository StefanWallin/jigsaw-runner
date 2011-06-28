Installation & update:
----------------------

<pre>
sh jigsaw-update.sh
</pre>

Will install the jar file in ./2002/css-validator/

Usage:
------

<pre>
cd ./2002/css-validator/
java -jar css-validator.jar http://www.festiz.com/ --profile=css3 --output=xhtml > result.htm
</pre>

This will output the result as a xhtml-page into the file: result.htm

To see more usage options:

<pre>
cs ./2002/css-validator/
java -jar css-validator.jar
</pre>

