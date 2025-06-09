.class public Lcom/zhihu/matisse/internal/entity/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_DISPLAY_NAME_CAPTURE:Ljava/lang/String; = "Capture"

.field public static final ITEM_ID_CAPTURE:J = -0x1L


# instance fields
.field public final duration:J

.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final size:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/zhihu/matisse/internal/entity/Item$1;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/entity/Item$1;-><init>()V

    sput-object v0, Lcom/zhihu/matisse/internal/entity/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;JJ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    .line 52
    iput-object p3, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/entity/Item;->isImage()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 55
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 57
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p3, "external"

    .line 60
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 62
    :goto_0
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    .line 63
    iput-wide p4, p0, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    .line 64
    iput-wide p6, p0, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    .line 70
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zhihu/matisse/internal/entity/Item$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/entity/Item;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;
    .locals 9

    .line 76
    new-instance v8, Lcom/zhihu/matisse/internal/entity/Item;

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "mime_type"

    .line 77
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_size"

    .line 78
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "duration"

    .line 79
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zhihu/matisse/internal/entity/Item;-><init>(JLjava/lang/String;JJ)V

    return-object v8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 118
    instance-of v0, p1, Lcom/zhihu/matisse/internal/entity/Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 123
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    .line 126
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-nez v0, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 135
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 136
    iget-object v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    mul-int/2addr v0, v1

    .line 139
    iget-object v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 140
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 141
    iget-wide v1, p0, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCapture()Z
    .locals 4

    .line 101
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGif()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->isGif(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->isImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object p2, p0, Lcom/zhihu/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
