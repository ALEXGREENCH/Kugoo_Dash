.class Lcom/lidong/photopicker/ImageConfig$1;
.super Ljava/lang/Object;
.source "ImageConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidong/photopicker/ImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lidong/photopicker/ImageConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lidong/photopicker/ImageConfig;
    .locals 1

    .line 45
    new-instance v0, Lcom/lidong/photopicker/ImageConfig;

    invoke-direct {v0, p1}, Lcom/lidong/photopicker/ImageConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/ImageConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lidong/photopicker/ImageConfig;
    .locals 0

    .line 49
    new-array p1, p1, [Lcom/lidong/photopicker/ImageConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/ImageConfig$1;->newArray(I)[Lcom/lidong/photopicker/ImageConfig;

    move-result-object p1

    return-object p1
.end method
