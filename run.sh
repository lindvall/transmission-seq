#!/bin/sh

mkdir -p /home/transmission/Downloads
mkdir -p /home/transmission/.config/transmission-daemon

default=/default-settings.json
tmp=/tmp/settings.json
settings=/home/transmission/.config/transmission-daemon/settings.json

if [ ! -f $settings ]; then
  # Set config
  cp $default $tmp

  if [ "$ALT_SPEED_DOWN" ];                 then jq 'setpath(["alt-speed-down"];                 '$ALT_SPEED_DOWN')'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_ENABLED" ];              then jq 'setpath(["alt-speed-enabled"];              '$ALT_SPEED_ENABLED')'              $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_TIME_BEGIN" ];           then jq 'setpath(["alt-speed-time-begin"];           '$ALT_SPEED_TIME_BEGIN')'           $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_TIME_DAY" ];             then jq 'setpath(["alt-speed-time-day"];             '$ALT_SPEED_TIME_DAY')'             $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_TIME_ENABLED" ];         then jq 'setpath(["alt-speed-time-enabled"];         '$ALT_SPEED_TIME_ENABLED')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_TIME_END" ];             then jq 'setpath(["alt-speed-time-end"];             '$ALT_SPEED_TIME_END')'             $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ALT_SPEED_UP" ];                   then jq 'setpath(["alt-speed-up"];                   '$ALT_SPEED_UP')'                   $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$BIND_ADDRESS_IPV4" ];              then jq 'setpath(["bind-address-ipv4"];              "'$BIND_ADDRESS_IPV4'")'            $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$BIND_ADDRESS_IPV6" ];              then jq 'setpath(["bind-address-ipv6"];              "'$BIND_ADDRESS_IPV6'")'            $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$BLOCKLIST_ENABLED" ];              then jq 'setpath(["blocklist-enabled"];              '$BLOCKLIST_ENABLED')'              $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$BLOCKLIST_URL" ];                  then jq 'setpath(["blocklist-url"];                  "'$BLOCKLIST_URL'")'                $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$CACHE_SIZE_MB" ];                  then jq 'setpath(["cache-size-mb"];                  '$CACHE_SIZE_MB')'                  $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DHT_ENABLED" ];                    then jq 'setpath(["dht-enabled"];                    '$DHT_ENABLED')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DOWNLOAD_DIR" ];                   then jq 'setpath(["download-dir"];                   "'$DOWNLOAD_DIR'")'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DOWNLOAD_LIMIT" ];                 then jq 'setpath(["download-limit"];                 '$DOWNLOAD_LIMIT')'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DOWNLOAD_LIMIT_ENABLED" ];         then jq 'setpath(["download-limit-enabled"];         '$DOWNLOAD_LIMIT_ENABLED')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DOWNLOAD_QUEUE_ENABLED" ];         then jq 'setpath(["download-queue-enabled"];         '$DOWNLOAD_QUEUE_ENABLED')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$DOWNLOAD_QUEUE_SIZE" ];            then jq 'setpath(["download-queue-size"];            '$DOWNLOAD_QUEUE_SIZE')'            $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$ENCRYPTION" ];                     then jq 'setpath(["encryption"];                     '$ENCRYPTION')'                     $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$IDLE_SEEDING_LIMIT" ];             then jq 'setpath(["idle-seeding-limit"];             '$IDLE_SEEDING_LIMIT')'             $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$IDLE_SEEDING_LIMIT_ENABLED" ];     then jq 'setpath(["idle-seeding-limit-enabled"];     '$IDLE_SEEDING_LIMIT_ENABLED')'     $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$INCOMPLETE_DIR" ];                 then jq 'setpath(["incomplete-dir"];                 "'$INCOMPLETE_DIR'")'               $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$INCOMPLETE_DIR_ENABLED" ];         then jq 'setpath(["incomplete-dir-enabled"];         '$INCOMPLETE_DIR_ENABLED')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$LPD_ENABLED" ];                    then jq 'setpath(["lpd-enabled"];                    '$LPD_ENABLED')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$MAX_PEERS_GLOBAL" ];               then jq 'setpath(["max-peers-global"];               '$MAX_PEERS_GLOBAL')'               $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$MESSAGE_LEVEL" ];                  then jq 'setpath(["message-level"];                  '$MESSAGE_LEVEL')'                  $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_CONGESTION_ALGORITHM" ];      then jq 'setpath(["peer-congestion-algorithm"];      "'$PEER_CONGESTION_ALGORITHM'")'    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_LIMIT_GLOBAL" ];              then jq 'setpath(["peer-limit-global"];              '$PEER_LIMIT_GLOBAL')'              $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_LIMIT_PER_TORRENT" ];         then jq 'setpath(["peer-limit-per-torrent"];         '$PEER_LIMIT_PER_TORRENT')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_PORT" ];                      then jq 'setpath(["peer-port"];                      '$PEER_PORT')'                      $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_PORT_RANDOM_HIGH" ];          then jq 'setpath(["peer-port-random-high"];          '$PEER_PORT_RANDOM_HIGH')'          $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_PORT_RANDOM_LOW" ];           then jq 'setpath(["peer-port-random-low"];           '$PEER_PORT_RANDOM_LOW')'           $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_PORT_RANDOM_ON_START" ];      then jq 'setpath(["peer-port-random-on-start"];      '$PEER_PORT_RANDOM_ON_START')'      $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEER_SOCKET_TOS" ];                then jq 'setpath(["peer-socket-tos"];                "'$PEER_SOCKET_TOS'")'              $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PEX_ENABLED" ];                    then jq 'setpath(["pex-enabled"];                    '$PEX_ENABLED')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PORT_FORWARDING_ENABLED" ];        then jq 'setpath(["port-forwarding-enabled"];        '$PORT_FORWARDING_ENABLED')'        $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PREALLOCATION" ];                  then jq 'setpath(["preallocation"];                  '$PREALLOCATION')'                  $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$PREFETCH_ENABLED" ];               then jq 'setpath(["prefetch-enabled"];               '$PREFETCH_ENABLED')'               $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$QUEUE_STALLED_ENABLED" ];          then jq 'setpath(["queue-stalled-enabled"];          '$QUEUE_STALLED_ENABLED')'          $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$QUEUE_STALLED_MINUTES" ];          then jq 'setpath(["queue-stalled-minutes"];          '$QUEUE_STALLED_MINUTES')'          $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RATIO_LIMIT" ];                    then jq 'setpath(["ratio-limit"];                    '$RATIO_LIMIT')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RATIO_LIMIT_ENABLED" ];            then jq 'setpath(["ratio-limit-enabled"];            '$RATIO_LIMIT_ENABLED')'            $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RENAME_PARTIAL_FILES" ];           then jq 'setpath(["rename-partial-files"];           '$RENAME_PARTIAL_FILES')'           $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_AUTHENTICATION_REQUIRED" ];    then jq 'setpath(["rpc-authentication-required"];    '$RPC_AUTHENTICATION_REQUIRED')'    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_BIND_ADDRESS" ];               then jq 'setpath(["rpc-bind-address"];               "'$RPC_BIND_ADDRESS'")'             $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_ENABLED" ];                    then jq 'setpath(["rpc-enabled"];                    '$RPC_ENABLED')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_PASSWORD" ];                   then jq 'setpath(["rpc-password"];                   "'$RPC_PASSWORD'")'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_PORT" ];                       then jq 'setpath(["rpc-port"];                       '$RPC_PORT')'                       $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_URL" ];                        then jq 'setpath(["rpc-url"];                        "'$RPC_URL'")'                      $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_USERNAME" ];                   then jq 'setpath(["rpc-username"];                   "'$RPC_USERNAME'")'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_WHITELIST" ];                  then jq 'setpath(["rpc-whitelist"];                  "'$RPC_WHITELIST'")'                $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$RPC_WHITELIST_ENABLED" ];          then jq 'setpath(["rpc-whitelist-enabled"];          '$RPC_WHITELIST_ENABLED')'          $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SCRAPE_PAUSED_TORRENTS_ENABLED" ]; then jq 'setpath(["scrape-paused-torrents-enabled"]; '$SCRAPE_PAUSED_TORRENTS_ENABLED')' $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SCRIPT_TORRENT_DONE_ENABLED" ];    then jq 'setpath(["script-torrent-done-enabled"];    '$SCRIPT_TORRENT_DONE_ENABLED')'    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SCRIPT_TORRENT_DONE_FILENAME" ];   then jq 'setpath(["script-torrent-done-filename"];   "'$SCRIPT_TORRENT_DONE_FILENAME'")' $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SEED_QUEUE_ENABLED" ];             then jq 'setpath(["seed-queue-enabled"];             '$SEED_QUEUE_ENABLED')'             $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SEED_QUEUE_SIZE" ];                then jq 'setpath(["seed-queue-size"];                '$SEED_QUEUE_SIZE')'                $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SPEED_LIMIT_DOWN" ];               then jq 'setpath(["speed-limit-down"];               '$SPEED_LIMIT_DOWN')'               $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SPEED_LIMIT_DOWN_ENABLED" ];       then jq 'setpath(["speed-limit-down-enabled"];       '$SPEED_LIMIT_DOWN_ENABLED')'       $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SPEED_LIMIT_UP" ];                 then jq 'setpath(["speed-limit-up"];                 '$SPEED_LIMIT_UP')'                 $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$SPEED_LIMIT_UP_ENABLED" ];         then jq 'setpath(["speed-limit-up-enabled"];         '$SPEED_LIMIT_UP_ENABLED')'         $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$START_ADDED_TORRENTS" ];           then jq 'setpath(["start-added-torrents"];           '$START_ADDED_TORRENTS')'           $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$TRASH_ORIGINAL_TORRENT_FILES" ];   then jq 'setpath(["trash-original-torrent-files"];   '$TRASH_ORIGINAL_TORRENT_FILES')'   $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$UMASK" ];                          then jq 'setpath(["umask"];                          '$UMASK')'                          $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$UPLOAD_LIMIT" ];                   then jq 'setpath(["upload-limit"];                   '$UPLOAD_LIMIT')'                   $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$UPLOAD_LIMIT_ENABLED" ];           then jq 'setpath(["upload-limit-enabled"];           '$UPLOAD_LIMIT_ENABLED')'           $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$UPLOAD_SLOTS_PER_TORRENT" ];       then jq 'setpath(["upload-slots-per-torrent"];       '$UPLOAD_SLOTS_PER_TORRENT')'       $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi
  if [ "$UTP_ENABLED" ];                    then jq 'setpath(["utp-enabled"];                    '$UTP_ENABLED')'                    $tmp > /tmp/output.json && mv /tmp/output.json $tmp ; fi

  mv $tmp $settings
fi

chown -R $UID:$GID /home/transmission /tmp /home/transmission/.config/transmission-daemon /home/transmission/Downloads /etc/s6.d

exec su-exec $UID:$GID /bin/s6-svscan /etc/s6.d
