#!/bin/bash

echo '{"version":1}'
echo '['
echo '[],'

exec conky -c ~/.i3/scripts/conky-json.conf
