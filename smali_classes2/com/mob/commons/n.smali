.class public Lcom/mob/commons/n;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mob/commons/n;->c:Z

    const-string v0, "043c7dkdfdl_hYdi,h)dk+eKdkdjdlWcg-dkdgdcfi7fKdjdddi3cfCdldk(d7didcdleeghfdeefledUdgg fj<dc\'eh"

    .line 21
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/n;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p0, v0}, Lcom/mob/commons/n;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/CountDownLatch;)Lcom/mob/commons/n;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mob/commons/n;->a:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mob/commons/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    const-string p1, "010)dkSdHdhdidcdhefTgd\'ej"

    .line 44
    invoke-static {p1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "010]dk dWdhdidcdhefTgd1ej"

    .line 45
    invoke-static {p1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/n;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "017_dk6d=dhdidcdhEgKdidfdi>i4dhfi?idif"

    .line 46
    invoke-static {p1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "0171dkBd9dhdidcdhPgNdidfdiSi?dhfiQidif"

    .line 48
    invoke-static {p1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mob/commons/n;->c:Z

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mob/commons/n;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/mob/commons/n;->c:Z

    return v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mob/commons/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/n;->d:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/n;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-lez p4, :cond_2

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mob/commons/n;->a(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/n;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-lez p1, :cond_4

    move v5, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    move v5, p1

    .line 101
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/mob/commons/n;->a(IJZFDLjava/lang/String;)V

    .line 103
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
