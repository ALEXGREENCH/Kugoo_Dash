.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->showBlueMusicSetting(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$302(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Z)Z

    .line 477
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 478
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$9;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
