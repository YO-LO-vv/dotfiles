les 文件夹路径和目标主目录
dotfiles_dir="$HOME/dotfiles"
target_dir="$HOME"

# 检查 dotfiles 文件夹是否存在
if [ -d "$dotfiles_dir" ]; then
	# 获取 dotfiles 文件夹下的所有文件和目录
	for item in "$dotfiles_dir"/*; do
		# 提取文件/目录名称
		item_name=$(basename "$item")

				# 创建符号链接到目标主目录
				ln -s "$item" "$target_dir/$item_name"
			done

			echo "符号链接已创建完成，将 dotfiles 文件夹下的内容映射到 $target_dir。"
		else
			echo "dotfiles 文件夹不存在。请确保 dotfiles 存储库存在并正确配置。"
fi

