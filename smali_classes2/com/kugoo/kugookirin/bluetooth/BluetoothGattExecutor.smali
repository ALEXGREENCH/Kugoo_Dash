.class public Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothGattExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;
    }
.end annotation


# instance fields
.field private volatile currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->queue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public execute(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentAct1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 52
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 53
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;->execute(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 57
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "currentAct2 = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 98
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->execute(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    const/4 p2, 0x0

    .line 91
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 92
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->execute(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 77
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->execute(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    if-nez p3, :cond_0

    .line 83
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->queue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 68
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->execute(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->currentAction:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    .line 104
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;->execute(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
