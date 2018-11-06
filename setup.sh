#! /bin/sh
if command -v stow >/dev/null; then
  for f in */; do
    stow $f
  done
else {
  echo >&2 "I require foo but it's not installed.  Aborting.";
  exit 1;
}
fi

