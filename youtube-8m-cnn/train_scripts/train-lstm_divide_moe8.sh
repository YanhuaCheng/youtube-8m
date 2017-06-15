CUDA_VISIBLE_DEVICES=1 python train.py \
		--train_data_pattern='/Youtube-8M/data/frame/train/*.tfrecord' \
		--train_dir='/home/zhangt/yt8m/frame_level_lstm_divide_model' \
		--frame_features=True \
		--feature_names="rgb, audio" \
		--feature_sizes="1024, 128" \
		--model='LstmDivideModel' \
		--video_level_classifier_model=MoeModel \
		--moe_num_extend=3 \
		--moe_num_mixtures=8 \
		--batch_size=128 \
		--base_learning_rate=0.001