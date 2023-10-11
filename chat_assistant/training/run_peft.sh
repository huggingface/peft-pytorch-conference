python train.py \
--model_name "meta-llama/Llama-2-7b-chat-hf" \
--dataset_name "smangrul/ad-copy-generation" \
--max_seq_len 2048 \
--max_steps 100 \
--logging_steps 5 \
--eval_steps 25 \
--save_steps 25 \
--push_to_hub \
--bf16 True \
--packing True \
--output_dir "llama-ad-gen" \
--per_device_train_batch_size 8 \
--gradient_accumulation_steps 1 \
--dataset_text_field "content" \
--use_peft_lora True \
--lora_r 8 \
--lora_alpha 32 \
--lora_target_modules "q_proj,k_proj,v_proj,o_proj,down_proj,up_proj,gate_proj" \
--use_4bit_qunatization True \
--use_nested_quant True \
--bnb_4bit_compute_dtype "bfloat16" \
--use_flash_attn True

