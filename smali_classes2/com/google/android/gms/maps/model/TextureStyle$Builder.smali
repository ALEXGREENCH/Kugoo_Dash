.class public final Lcom/google/android/gms/maps/model/TextureStyle$Builder;
.super Lcom/google/android/gms/maps/model/StampStyle$Builder;
.source "com.google.android.gms:play-services-maps@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/TextureStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/maps/model/StampStyle$Builder<",
        "Lcom/google/android/gms/maps/model/TextureStyle$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/StampStyle$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/maps/model/zzx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/StampStyle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/maps/model/TextureStyle;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/TextureStyle;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/TextureStyle$Builder;->zza:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/TextureStyle;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;Lcom/google/android/gms/maps/model/zzy;)V

    return-object v0
.end method

.method protected final bridge synthetic self()Lcom/google/android/gms/maps/model/StampStyle$Builder;
    .locals 0

    return-object p0
.end method

.method protected self()Lcom/google/android/gms/maps/model/TextureStyle$Builder;
    .locals 0

    return-object p0
.end method
