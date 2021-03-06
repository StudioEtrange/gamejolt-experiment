if [ ! "$_distcc_INCLUDED_" = "1" ]; then
_distcc_INCLUDED_=1


feature_distcc() {
	FEAT_NAME=distcc
	FEAT_LIST_SCHEMA="3_2_1rc1:source"
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}

feature_distcc_3_2_1rc1() {
	FEAT_VERSION=3_2_1rc1


	FEAT_SOURCE_DEPENDENCIES="ncurses#6_0"
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://github.com/distcc/distcc/archive/v3.2rc1.tar.gz
	FEAT_SOURCE_URL_FILENAME=distcc-v3.2rc1.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP


	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/distcc
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}



feature_distcc_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"


	__set_toolset "STANDARD"
	__add_toolset "miniconda#4_2_12_PYTHON2"
	__add_toolset "autotools"

	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "DEST_ERASE STRIP FORCE_NAME $FEAT_SOURCE_URL_FILENAME"

	AUTO_INSTALL_CONF_FLAG_PREFIX=
	AUTO_INSTALL_CONF_FLAG_POSTFIX=
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=

	__feature_callback

	STELLA_C_CXX_FLAGS="-Wno-error $STELLA_C_CXX_FLAGS"

	__auto_build "$FEAT_NAME" "$SRC_DIR" "$INSTALL_DIR" "NO_OUT_OF_TREE_BUILD AUTOTOOLS autogen"




}


fi
