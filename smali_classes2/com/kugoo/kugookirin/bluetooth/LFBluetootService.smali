.class public Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
.super Landroid/app/Service;
.source "LFBluetootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;,
        Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;,
        Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_CODE_OK:Ljava/lang/String;

.field public static final ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

.field public static final ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String;

.field public static final ACTION_DISCONNECTED:Ljava/lang/String;

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String;

.field public static final ACTION_GATT_CONNECTING:Ljava/lang/String;

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String;

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

.field public static final ACTION_GATT_SHOW_VEHICLE_VIEW:Ljava/lang/String;

.field public static final ACTION_START_SCAN:Ljava/lang/String;

.field public static final CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field public static CONNECT_TYPE:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_CHARACTERISTIC_UUID:Ljava/lang/String;

.field public static final EXTRA_DATA:Ljava/lang/String;

.field public static final EXTRA_SERVICE_UUID:Ljava/lang/String;

.field public static final EXTRA_TEXT:Ljava/lang/String;

.field private static final INTENT_PREFIX:Ljava/lang/String;

.field public static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STOPTIME:I = 0x708

.field private static final TAG:Ljava/lang/String; = "LFBluetootServiceLFTest"

.field public static final deviceService:Ljava/util/UUID;

.field public static final deviceService_fmi:Ljava/util/UUID;

.field public static final deviceService_kugoo:Ljava/util/UUID;

.field private static mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field public static final readUUID:Ljava/util/UUID;

.field public static final readUUID_fmi:Ljava/util/UUID;

.field public static final readUUID_kugoo:Ljava/util/UUID;

.field public static final writeUUID:Ljava/util/UUID;

.field public static final writeUUID_fmi:Ljava/util/UUID;

.field public static final writeUUID_kugoo:Ljava/util/UUID;


# instance fields
.field private aimAddress:Ljava/lang/String;

.field public bleAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private checkDevice:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;

.field private check_is_disconnect:Ljava/lang/Thread;

.field private connectedAddress:Ljava/lang/String;

.field public connectionState:I

.field private currentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

.field private faultPasswordOfTimes:I

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private gattList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private isCodeOk:Z

.field private isDate:Z

.field private isFirstReceiveCODE_OK:Z

.field private isScanning:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mRequestConnectionPriority:Z

.field private myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

.field private numTime:J

.field private numTimeScan:J

.field private oldAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field private readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private receive_num_time:J

.field private scanTime:I

.field private scanner:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;

.field private writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 47
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    const-string v0, "9546bdc0-60ba-11e9-8647-0002a5d5c51b"

    .line 50
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService:Ljava/util/UUID;

    const-string v0, "9546bdc1-60ba-11e9-8647-0002a5d5c51b"

    .line 51
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID:Ljava/util/UUID;

    const-string v0, "9546bdc4-60ba-11e9-8647-0002a5d5c51b"

    .line 52
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID:Ljava/util/UUID;

    const-string v0, "b1b99ca0-98e7-11e9-80fe-0002a5d5c51b"

    .line 54
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService_kugoo:Ljava/util/UUID;

    const-string v0, "b1b99ca1-98e7-11e9-80fe-0002a5d5c51b"

    .line 55
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID_kugoo:Ljava/util/UUID;

    const-string v0, "b1b99ca4-98e7-11e9-80fe-0002a5d5c51b"

    .line 56
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID_kugoo:Ljava/util/UUID;

    const-string v0, "331023c0-fdcb-11e8-8eb2-0002a5d5c51b"

    .line 58
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->deviceService_fmi:Ljava/util/UUID;

    const-string v0, "331023c1-fdcb-11e8-8eb2-0002a5d5c51b"

    .line 59
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeUUID_fmi:Ljava/util/UUID;

    const-string v0, "331023c4-fdcb-11e8-8eb2-0002a5d5c51b"

    .line 60
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readUUID_fmi:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->CONNECT_TYPE:I

    .line 102
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->INTENT_PREFIX:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_START_SCAN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_START_SCAN:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_GATT_CONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTING:Ljava/lang/String;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_GATT_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_GATT_SHOW_VEHICLE_VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SHOW_VEHICLE_VIEW:Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_GATT_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_BLE_REQUEST_PASSWORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_BLE_REQUEST_PASSWORD_AGAIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_REQUEST_PASSWORD_AGAIN:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_DATA_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_BLE_CODE_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_BLE_CODE_OK:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_SERVICE_UUID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_SERVICE_UUID:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_CHARACTERISTIC_UUI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_CHARACTERISTIC_UUID:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_TEXT:Ljava/lang/String;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DISCONNECTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 71
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 87
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->faultPasswordOfTimes:I

    .line 88
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isFirstReceiveCODE_OK:Z

    .line 91
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning:Z

    .line 92
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    .line 120
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mRequestConnectionPriority:Z

    const-wide/16 v1, 0x0

    .line 121
    iput-wide v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->receive_num_time:J

    .line 123
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isDate:Z

    .line 125
    iput-wide v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTime:J

    iput-wide v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTimeScan:J

    .line 177
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$1;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 422
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$2;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

    .line 800
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$3;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->check_is_disconnect:Ljava/lang/Thread;

    .line 852
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;-><init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private UuidFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "-"

    const-string v1, ""

    .line 1191
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1192
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isDate:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isCodeOk:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning:Z

    return p1
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isCodeOk:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectedAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectedAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gattList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->currentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->currentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mRequestConnectionPriority:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTimeScan:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->faultPasswordOfTimes:I

    return p0
.end method

.method static synthetic access$2002(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->faultPasswordOfTimes:I

    return p1
.end method

.method static synthetic access$2008(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->faultPasswordOfTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->faultPasswordOfTimes:I

    return v0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTimeScan:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isFirstReceiveCODE_OK:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isFirstReceiveCODE_OK:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->receive_num_time:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->numTime:J

    return-wide p1
.end method

.method static synthetic access$400()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 1

    .line 43
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->UuidFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    return p0
.end method

.method static synthetic access$902(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    return p1
.end method

.method static synthetic access$908(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    return v0
.end method

.method private broadcastUpdate(Ljava/lang/String;)V
    .locals 1

    .line 814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.vehicle.kugooa"

    .line 815
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 822
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_SERVICE_UUID:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_CHARACTERISTIC_UUID:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 826
    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "com.vehicle.kugooa"

    .line 827
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 1

    .line 129
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object v0
.end method


# virtual methods
.method public again_connect()Z
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 977
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v2, "Device not found.  Unable to connect."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 980
    :cond_1
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 970
    :cond_4
    :goto_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothAdapter not initialized or unspecified\u672a\u6307\u660e address."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public close()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 3

    .line 917
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const-string v0, "====="

    const-string v1, "lfbluetoot=disconnect"

    .line 929
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    .line 931
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 937
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 940
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v0, "Device not found.  Unable to connect."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 945
    :cond_2
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_3

    .line 948
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 950
    :cond_3
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to create a new connection, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->executor:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 951
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectionState:I

    .line 952
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4

    .line 953
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 956
    :cond_4
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 958
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_5
    sget-boolean p1, Lcom/kugoo/kugookirin/MainActivity;->is_click_blue_connect:Z

    if-nez p1, :cond_6

    .line 962
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTING:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;)V

    :cond_6
    return v0

    :cond_7
    :goto_1
    const-string p1, "BluetoothAdapter not initialized or unspecified\u672a\u6307\u660e address."

    .line 920
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 997
    :cond_0
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 1002
    :cond_1
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "Device not found.  Unable to connect."

    .line 1004
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1013
    :cond_2
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1017
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/4 v1, 0x0

    .line 1018
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 1020
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1021
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1022
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    .line 1024
    :cond_3
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->removePassword(Ljava/lang/String;)V

    .line 1025
    sget-object v2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;)V

    .line 1027
    iget-object v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    iput-boolean v0, v3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->is_Code_Ok:Z

    .line 1028
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    iput-object v1, v0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    .line 1030
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->removePassword(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    const-string p1, "BluetoothAdapter not initialized or unspecified\u672a\u6307\u660e address."

    .line 999
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAimAddress()Ljava/lang/String;
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBleDevicesAdapter()Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    return-object v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->connectedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->currentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1149
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 1150
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPassword password("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1102
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .line 864
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "bluetooth"

    .line 870
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    .line 872
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize BluetoothManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 879
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanner:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;

    if-nez v0, :cond_3

    .line 885
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {v0, v2, v3}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanner:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->checkDevice:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;

    if-nez v0, :cond_4

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->oldAddress:Ljava/util/ArrayList;

    .line 891
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->checkDevice:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;

    .line 892
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$CheckDevice;->start()V

    .line 895
    :cond_4
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    .line 897
    sput-object p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 899
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanner:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$Scanner;->startScanning()V

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gattList:Ljava/util/List;

    return v1
.end method

.method public isScanning()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 840
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 848
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->close()V

    .line 849
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 1067
    :cond_1
    :goto_0
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readRemoteRssi()Z
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    return v0

    .line 1086
    :cond_1
    :goto_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public removePassword(Ljava/lang/String;)V
    .locals 1

    .line 1169
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 1170
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1171
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public requestConnectionPriority(I)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mRequestConnectionPriority:Z

    if-nez v1, :cond_0

    .line 794
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mRequestConnectionPriority:Z

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " requestConnectionPriority : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wsh"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1158
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    .line 1159
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1161
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1163
    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savePassword password("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendData([B)V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1139
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_1
    return-void

    .line 1132
    :cond_2
    :goto_0
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendHexString(Ljava/lang/String;)V
    .locals 3

    .line 1119
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendData------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :try_start_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->StringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendString(Ljava/lang/String;)V
    .locals 3

    .line 1108
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendString------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "utf-8"

    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1180
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1184
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public startScan()V
    .locals 6

    .line 141
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v1, "startScan------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->clear()V

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 149
    iget-object v4, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->addDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    iget-object v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->aimAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    iget-object v1, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->myBluetoothAdapter:Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    .line 164
    :cond_2
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_START_SCAN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->broadcastUpdate(Ljava/lang/String;)V

    .line 165
    iput v3, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    .line 167
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 168
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->mbleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->isScanning:Z

    return-void
.end method

.method public stopScan()V
    .locals 1

    const/16 v0, 0x708

    .line 173
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->scanTime:I

    return-void
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 1076
    :cond_1
    :goto_0
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->TAG:Ljava/lang/String;

    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
