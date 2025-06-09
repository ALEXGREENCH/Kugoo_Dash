.class public Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;
.super Landroid/widget/BaseAdapter;
.source "BleDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final BleDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blueView:Landroid/view/View;

.field public currentDeviceAddress:Ljava/lang/String;

.field private firstConnect:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field public is_Code_Ok:Z

.field private lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field private mButton_connect:Landroid/widget/Button;

.field private mButton_disConnect:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mText_blueDate:Landroid/widget/TextView;

.field private final rssiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->rssiMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->scanMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->is_Code_Ok:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    .line 59
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->rssiMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->scanMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearButDevices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->clear()V

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->rssiMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->rssiMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->scanMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->addDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 111
    iget-object p3, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const p2, 0x7f0d00ae

    .line 117
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;-><init>(Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$1;)V

    const v0, 0x7f0a01c7

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    const v0, 0x7f0a01c8

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v0, 0x7f0a0146

    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 134
    iget-object v1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v1, 0x7f1203a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f06020f

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->is_Code_Ok:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    const v0, 0x7f120099

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->currentDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 147
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    const v0, 0x7f12009a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 152
    :cond_4
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p1, p3, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;->connectStatus:Landroid/widget/TextView;

    const p3, 0x7f0f0010

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-object p2
.end method

.method public removeDevice(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->BleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-void
.end method
