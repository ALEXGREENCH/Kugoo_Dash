.class Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BleDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field blueInfo:Landroid/widget/ImageView;

.field connectStatus:Landroid/widget/TextView;

.field deviceAddress:Landroid/widget/TextView;

.field deviceName:Landroid/widget/TextView;

.field deviceRssi:Landroid/widget/TextView;

.field scanResult:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$1;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bluetooth/BleDevicesAdapter$ViewHolder;-><init>()V

    return-void
.end method
