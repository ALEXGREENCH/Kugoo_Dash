.class public final Lcom/google/android/gms/maps/model/SpriteStyle$Builder;
.super Lcom/google/android/gms/maps/model/StampStyle$Builder;
.source "com.google.android.gms:play-services-maps@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/SpriteStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/maps/model/StampStyle$Builder<",
        "Lcom/google/android/gms/maps/model/SpriteStyle$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/StampStyle$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/maps/model/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/StampStyle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/maps/model/SpriteStyle;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/SpriteStyle;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/SpriteStyle$Builder;->zza:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/SpriteStyle;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-object v0
.end method

.method protected self()Lcom/google/android/gms/maps/model/SpriteStyle$Builder;
    .locals 0

    return-object p0
.end method

.method protected final bridge synthetic self()Lcom/google/android/gms/maps/model/StampStyle$Builder;
    .locals 0

    return-object p0
.end method
