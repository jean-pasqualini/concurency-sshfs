test:
	@docker exec -it concurencysshfs_get-files_1 ls /var/mount/destination/$(SI) -al || true;
	@docker exec -it concurencysshfs_get-files_2 ls /var/mount/destination/$(SI) -al || true;
	@docker exec -it concurencysshfs_get-files_3 ls /var/mount/destination/$(SI) -al || true;
	@docker exec -it concurencysshfs_get-files_4 ls /var/mount/destination/$(SI) -al || true;
	@docker exec -it concurencysshfs_get-files_5 ls /var/mount/destination/$(SI) -al || true;