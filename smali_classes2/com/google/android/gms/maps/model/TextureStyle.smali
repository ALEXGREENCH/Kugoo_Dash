.class public Lcom/google/android/gms/maps/model/TextureStyle;
.super Lcom/google/android/gms/maps/model/StampStyle;
.source "com.google.android.gms:play-services-maps@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/TextureStyle$Builder;
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;Lcom/google/android/gms/maps/model/zzy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/model/StampStyle;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public static newBuilder(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/TextureStyle$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/TextureStyle$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/TextureStyle$Builder;-><init>(Lcom/google/android/gms/maps/model/zzx;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/model/StampStyle$Builder;->stamp(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/StampStyle$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/TextureStyle$Builder;

    return-object p0
.end method
