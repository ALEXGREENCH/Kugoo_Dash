.class Lcom/kugoo/kugookirin/social/PublishLocActivity$1;
.super Ljava/lang/Object;
.source "PublishLocActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishLocActivity;->openGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 183
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    const/16 v0, 0x4b0

    invoke-virtual {p2, p1, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
