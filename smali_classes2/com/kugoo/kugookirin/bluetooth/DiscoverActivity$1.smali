.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$1;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->initGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$1;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
