$HHED      = '/search/tts/htk/bin/HHEd';
$orgmodel ='/search/tts/MGE3W/ML/cmp/re_clustered.mmf';
$newmodel ='/search/tts/MGE3W/ML/cmp/text_re_clustered.mmf';

system("$HHED -C config -H $orgmodel -w $newmodel empty.hed /search/tts/MGE3W/full.list"); 
