.class Lcom/kugoo/kugookirin/social/PublishLocActivity$2;
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

    .line 187
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "saleOnresume002"

    const-string p2, "NO opengps==>"

    .line 192
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object p1

    const-string v0, "saleOnresume004"

    if-eqz p1, :cond_0

    .line 195
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    .line 197
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {p1, p2, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishLocActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "NO one==>"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$300(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishLocActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
