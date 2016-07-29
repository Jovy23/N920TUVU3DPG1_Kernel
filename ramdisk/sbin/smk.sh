#!/system/bin/sh

mount -o remount,rw /system

#Auto-Kills knox and security/software checking related apps
rm -rf /knox_data
rm -rf /system/container
rm -rf /system/preloadedmdm
rm -rf /system/tima_measurement_info
rm -rf /system/app/BBCAgent
rm -rf /system/app/Bridge
rm -rf /system/app/KnoxAppsUpdateAgent
rm -rf /system/app/KnoxAttestationAgent
rm -rf /system/app/KnoxFolderContainer
rm -rf /system/app/KnoxSetupWizardClient
rm -rf /system/app/KnoxSwitcher
rm -rf /system/app/RCPComponents
rm -rf /system/app/SamsungIRMService
rm -rf /system/app/SamsungDLPService
rm -rf /system/app/SecurityLogAgent
rm -rf /system/app/SwitchKnoxI
rm -rf /system/app/SwitchKnoxII
rm -rf /system/app/UniversalMDMClient
rm -rf /system/priv-app/AdaptClient
rm -rf /system/priv-app/DiagMonAgent
rm -rf /system/priv-app/FotaClient
rm -rf /system/priv-app/FotaAgent
rm -rf /system/priv-app/FWUpdateService
rm -rf /system/priv-app/KLMSAgent
rm -rf /system/priv-app/SOAgent
rm -rf /system/priv-app/SPDClient
rm -rf /system/priv-app/SyncmlDM
rm -rf /data/data/com.sec.knox.containeragent
rm -rf /data/data/com.sec.knox.eventsmanager
rm -rf /data/data/com.sec.enterprise.knox.attestation
rm -rf /data/data/com.sec.knox.app.container
rm -rf /data/data/com.sec.knox.seandroid
rm -rf /data/data/com.sec.knox.store
rm -rf /data/data/com.samsung.klmsagent
rm -rf /data/data/com.samsung.knox.rcp.components
rm -rf /data/data/com.sec.enterprise.knox.cloudmdm.smdms
rm -rf /data/data/com.sec.knox.bridge
rm -rf /data/data/com.sec.knox.knoxsetupwizardclient
rm -rf /data/data/com.sec.knox.setupwizardstub
rm -rf /data/app/com.samsung.android.securitylogagent
rm -rf /system/etc/secure_storage/com.samsung.android.securitylogagent
rm -rf /system/etc/secure_storage/com.samsung.android.securitylogagent!dex
rm -rf /system/etc/secure_storage/com.sec.knox.store
rm -rf /system/etc/secure_storage/com.sec.knox.store!dex

#
# Init.d Support
#
if [ ! -d /system/etc/init.d ]; then
   mkdir -p /system/etc/init.d/
   chmod 777 /system/etc/init.d
   chmod 777 /system/etc/init.d/;
   chmod 777 /system/etc/init.d/*;
fi
run-parts /system/etc/init.d

