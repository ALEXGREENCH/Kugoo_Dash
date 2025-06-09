.class Lcom/kugoo/kugookirin/social/PublishLocActivity$3;
.super Ljava/lang/Object;
.source "PublishLocActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/PublishLocActivity;
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

    .line 291
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const-string v0, "onLocationChanged"

    const-string v1, "saleOnresume004"

    .line 294
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 296
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 297
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$402(Lcom/kugoo/kugookirin/social/PublishLocActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 299
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$500(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$502(Lcom/kugoo/kugookirin/social/PublishLocActivity;Z)Z

    .line 302
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    .line 303
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "onActivityResult lastKnownLocation != null"

    .line 307
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    .line 310
    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishLocActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
