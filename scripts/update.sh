echo "🧹 Reset changes in submodule."
sh scripts/reset_changes.sh

echo "🌏 Updating submodule."
sh scripts/update_submodule.sh

echo "⚖️  Adding licence to files."
sh scripts/add_license.sh

echo "📦 Copying files from submodule."
sh scripts/copy_files.sh

echo "🚧 Resetting changes."
sh scripts/reset_changes.sh

echo "⬇️ Downloading TuDa Logo."
sh scripts/download_logo.sh

echo "✅ Finished"
