```markdown
# Share PC's (Windows 10) Internet with SBC via USB  

This guide explains how to share your Windows PC's internet connection with a single-board computer (SBC) running Ubuntu, using just a USB cable.  

## Steps  

### 1. Configure Windows  

1. Open **Control Panel > Network and Sharing Center > Change adapter settings**.  
2. Right-click your internet-connected network (Wi-Fi or Ethernet) and select **Properties**.  
3. Go to the **Sharing** tab, and check **Allow other network users to connect through this computer's Internet connection**.  
4. From the dropdown menu, select the USB network interface (e.g., "Remote NDIS").  
5. Click **OK**.  

Windows will typically assign the IP address `192.168.137.1` to the USB interface.  

---

### 2. Configure the SBC (Ubuntu)  

1. Set up the USB network interface (`usb0`):  
   ```bash
   sudo ip addr add 192.168.137.2/24 dev usb0  
   sudo ip link set usb0 up  
   sudo ip route add default via 192.168.137.1  
   ```  

2. Configure DNS:  
   ```bash
   echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf  
   ```  

---

### 3. Test the Connection  

1. Test connectivity to the Windows gateway:  
   ```bash
   ping 192.168.137.1  
   ```  

2. Test external connectivity:  
   ```bash
   ping 8.8.8.8  
   ```  

3. Test DNS resolution:  
   ```bash
   ping github.com  
   ```  

---

### Troubleshooting  

- Ensure **Internet Connection Sharing (ICS)** is properly configured on Windows.  
- Check drivers twice
- Verify the IP address and gateway are correctly set on the SBC.  

---

### Checks 

- ADB works just fine
- High MS due of bridge
- Be aware to DDOS from internet, it can crash 64 mb ram.

---

With these steps, your SBC should now have access to the internet through your Windows PC.  
```
