#VoxBi


*Requires* : Sox

*Install voxbi* :

~~~
gem install voxbi
~~~

*Use voxbi as an executable* :

~~~
$ voxbi Bonjour

"bσʒur"
Playing WAVE '/home/<USER>/.gem/ruby/gems/voxbi-0.1.4/data/paires.wav'
~~~

*Use voxbi as a library*

~~~
> require "voxbi"

> sentence = Voxbi.new("Voulez vous coucher avec moi ce soir ?")
  sentence.read

=> Playing WAVE '/home/<USER>/.gem/ruby/gems/voxbi-0.1.4/data/paires.wav'
~~~
