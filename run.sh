echo "Creating coolScript.sh..."
touch coolScript.sh

echo "Adding echo command to coolScript.sh..."
echo '#!/bin/bash' > coolScript.sh
echo 'echo "Hello from coolScript.sh"' >> coolScript.sh

echo "Running coolScript.sh..."
chmod +x coolScript.sh
./coolScript.sh
