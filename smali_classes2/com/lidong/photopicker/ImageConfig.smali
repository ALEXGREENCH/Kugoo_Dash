.class public Lcom/lidong/photopicker/ImageConfig;
.super Ljava/lang/Object;
.source "ImageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lidong/photopicker/ImageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mimeType:[Ljava/lang/String;

.field public minHeight:I

.field public minSize:J

.field public minWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/lidong/photopicker/ImageConfig$1;

    invoke-direct {v0}, Lcom/lidong/photopicker/ImageConfig$1;-><init>()V

    sput-object v0, Lcom/lidong/photopicker/ImageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lidong/photopicker/ImageConfig;->minWidth:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lidong/photopicker/ImageConfig;->minHeight:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidong/photopicker/ImageConfig;->minSize:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidong/photopicker/ImageConfig;->mimeType:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 27
    iget p2, p0, Lcom/lidong/photopicker/ImageConfig;->minWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Lcom/lidong/photopicker/ImageConfig;->minHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-wide v0, p0, Lcom/lidong/photopicker/ImageConfig;->minSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object p2, p0, Lcom/lidong/photopicker/ImageConfig;->mimeType:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
