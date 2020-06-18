#####################################################
# Project2 of Empirical Methods in Natural          #
# Language Processing (2020), Peking University.    #
# Yiyang Gu                                         #
#                                                   #
# Small Demo                                        #
# 10-shot learning                                  #
#####################################################

mkdir -p data

cd src_6-16/

python SemanticParser.py \
       --mode=1 \
       --input_file="../dm_dev.sdp" \
       --output_file="../data/dm_dev_predicted.sdp" \
       --epoch=8

sh ../evaluator/run.sh Scorer "../dm_dev.sdp" "../data/dm_dev_predicted.sdp"


# sh evaluator/run.sh Scorer "dm_small_train_20.sdp" "data/dm_small_train_20_predicted.sdp"
