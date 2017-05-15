#!/bin/sh

# ---------------------------------------------------------------------------- #
#
# Run the ShellCheck review.
#
# ---------------------------------------------------------------------------- #

# Check the current build.
if [ -z "${SHELL_REVIEW+x}" ] || [ "$SHELL_REVIEW" -ne 1 ]; then
 exit 0;
fi

HAS_ERRORS=0

code_review () {
  echo "${LWHITE}$1${RESTORE}"
  docker run -v "$TRAVIS_BUILD_DIR":/scripts koalaman/shellcheck /scripts/"$1"

  if [ $? -ne 0 ]; then
    HAS_ERRORS=1
  fi
}

cd "$TRAVIS_BUILD_DIR"
SCRIPTS=$(find ci-scripts server/scripts -name '*.sh')
for FILE in $SCRIPTS;  do
  code_review "$FILE"
done

exit $HAS_ERRORS

