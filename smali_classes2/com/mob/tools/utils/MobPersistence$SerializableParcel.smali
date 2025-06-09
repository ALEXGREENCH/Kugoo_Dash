.class public final Lcom/mob/tools/utils/MobPersistence$SerializableParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializableParcel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/proguard/EverythingKeeper;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x267095c028348dfdL


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private data:[B


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->clazz:Ljava/lang/Class;

    .line 1554
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->parcelable2Byte(Landroid/os/Parcelable;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->data:[B

    return-void
.end method

.method private byte2Parcelable([BLjava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1587
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1589
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1590
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string p1, "007=fehkhjgegdhihk"

    .line 1592
    invoke-static {p1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    .line 1593
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable$Creator;

    .line 1594
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .line 1595
    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1597
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return-object p3
.end method

.method private parcelable2Byte(Landroid/os/Parcelable;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1580
    invoke-interface {p1, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1581
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v0, [B

    return-object p1
.end method

.method private setClazz(Ljava/lang/Class;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private setData([B)V
    .locals 0

    .line 1574
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->data:[B

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->data:[B

    return-object v0
.end method

.method public getParcel(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1570
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->data:[B

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->clazz:Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/utils/MobPersistence$SerializableParcel;->byte2Parcelable([BLjava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
