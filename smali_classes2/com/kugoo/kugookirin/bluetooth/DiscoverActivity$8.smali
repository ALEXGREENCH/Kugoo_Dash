.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;
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

    .line 462
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 466
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$302(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Z)Z

    .line 467
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 468
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const-class v2, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 469
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$8;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->finish()V

    return-void
.end method
