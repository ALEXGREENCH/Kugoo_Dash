.class Lcom/kugoo/kugookirin/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/MainActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/MainActivity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$2;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 329
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$2;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    check-cast p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService$LocalBinder;->getService()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/MainActivity;->access$202(Lcom/kugoo/kugookirin/MainActivity;Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 330
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$2;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/MainActivity;->access$200(Lcom/kugoo/kugookirin/MainActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->initialize()Z

    move-result p1

    if-nez p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$2;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$2;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/MainActivity;->access$202(Lcom/kugoo/kugookirin/MainActivity;Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-void
.end method
