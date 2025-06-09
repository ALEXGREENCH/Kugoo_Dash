.class Lcom/mob/tools/utils/f$8;
.super Landroid/location/GnssStatus$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/f;->g()Landroid/location/GnssStatus$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/f;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/mob/tools/utils/f$8;->a:Lcom/mob/tools/utils/f;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 209
    iget-object p1, p0, Lcom/mob/tools/utils/f$8;->a:Lcom/mob/tools/utils/f;

    invoke-static {p1}, Lcom/mob/tools/utils/f;->c(Lcom/mob/tools/utils/f;)V

    return-void
.end method
