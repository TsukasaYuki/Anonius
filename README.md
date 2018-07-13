# Anonius (QoS Fix)
# Ubuntu 18.04 LTS (Bionic Beaver) & Debian 9 Stretch 
僅適用Anonius https://anonius.com VPS的系統模板，其餘不保證，

直接在VPS下執行以下指令即可，

內核會鎖死在4.1.52，因為內核4.4之後皆會被某些ISP特殊照顧，目前尚未查出原因為何

以後不會再有更新了，理論上其他VPS也可以適用，

但需自行刪除舊內核，完整解決只能等待其他高手們解決這問題。
```
wget https://raw.githubusercontent.com/TsukasaYuki/Anonius/master/qosnet.sh ; bash qosnet.sh
```
