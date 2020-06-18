#####################################################
# Project2 of Empirical Methods in Natural          #
# Language Processing (2020), Peking University.    #
# Yiyang Gu                                         #
#                                                   #
# Small Demo                                        #
# 10-shot learning                                  #
#####################################################

cd evaluator/
    ant
cd ../

mkdir -p data

cd src_6-16/

python SemanticParser.py \
       --mode=0 \
       --input_file="../dm_small_train_50.sdp" \
       --epoch=0

python SemanticParser.py \
       --mode=1 \
       --input_file="../dm_small_train_50.sdp" \
       --output_file="../data/dm_small_train_50_predicted.sdp" \
       --epoch=10

sh ../evaluator/run.sh Scorer "../dm_small_train_50.sdp" "../data/dm_small_train_50_predicted.sdp"

python SemanticParser.py \
       --mode=1 \
       --input_file="../dm_small_dev_20.sdp" \
       --output_file="../data/dm_small_dev_20_predicted.sdp" \
       --epoch=10

sh ../evaluator/run.sh Scorer "../dm_small_dev_20.sdp" "../data/dm_small_dev_20_predicted.sdp"

# sh evaluator/run.sh Scorer "dm_small_train_20.sdp" "data/dm_small_train_20_predicted.sdp"
