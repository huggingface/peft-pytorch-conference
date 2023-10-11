python train.py \
    --model_path "codellama/CodeLlama-13b-Instruct-hf" \
    --dataset_name "smangrul/hf-stack-v2" \
    --subset "data" \
    --data_column "content" \
    --split "train" \
    --seq_length 2048 \
    --max_steps 2000 \
    --batch_size 8 \
    --gradient_accumulation_steps 2 \
    --learning_rate 2e-4 \
    --lr_scheduler_type "constant" \
    --weight_decay 0.01 \
    --num_warmup_steps 30 \
    --eval_freq 100 \
    --save_freq 100 \
    --log_freq 25 \
    --push_to_hub \
    --num_workers 4 \
    --bf16 \
    --no_fp16 \
    --output_dir "codellama-13b-personal-copilot" \
    --fim_rate 0.5 \
    --fim_spm_rate 0.0 \
    --use_peft_lora \
    --lora_r 8 \
    --lora_alpha 32 \
    --lora_dropout 0.1 \
    --lora_target_modules "q_proj,k_proj,v_proj,o_proj,down_proj,up_proj,gate_proj" \
    --use_flash_attn \
    --use_4bit_qunatization \
    --use_nested_quant \
    --bnb_4bit_compute_dtype "bfloat16"