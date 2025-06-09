.class public interface abstract Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;
.super Ljava/lang/Object;
.source "BluetoothGattExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceAction"
.end annotation


# static fields
.field public static final NULL:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction$1;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction$1;-><init>()V

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;->NULL:Lcom/kugoo/kugookirin/bluetooth/BluetoothGattExecutor$ServiceAction;

    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/bluetooth/BluetoothGatt;)Z
.end method
