.class public Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;
.super Landroid/os/Binder;
.source "LFBluetootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;->this$0:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object v0
.end method
