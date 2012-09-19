DIR=$1;


rm $DIR/copy.mk;

echo "PRODUCT_COPY_FILES += \\" >tmp.mk
for i in `cd $DIR; find * -type f; cd ..`;
do
	echo "    \$(LOCAL_PATH)/${i}:system/${i} \\" >>tmp.mk
done

cp tmp.mk $DIR/copy.mk
