#!/bin/perl
#Convert binary model to text model in HTK and HTS
#Author: shuaijiang
#Email:  zhaoshuaijiang8@gmail.com
#date:   20141229
#Require: Need additional files: config and empty.hed(which is empty)
use strict;
my $HHED         = '/search/tts/htk/bin/HHEd';
my $binary_model ='/search/tts/MGE3W/ML/cmp/re_clustered.mmf';
my $text_model   ='/search/tts/MGE3W/ML/cmp/text_re_clustered.mmf';
my $full_list    = '/search/tts/MGE3W/full.list';
if($#ARGV != 3)
{
	print "Usage: perl bmm2mmf.pl HHED binary_model text_model\n";
	print "Example: perl bmm2mmf.pl $HHED $binary_model $text_model $full_list\n";
	exit;
}
$HHED = $ARGV[0];
$binary_model = $ARGV[1];
$text_model   = $ARGV[2];
$full_list    = $ARGV[3];


system("$HHED -C config -H $binary_model -w $text_model empty.hed $full_list"); 
