.class public abstract Lcom/mob/apc/a/d;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/apc/a/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mob.apc.impl.IAidlInterface"

    .line 8
    invoke-virtual {p0, p0, v0}, Lcom/mob/apc/a/d;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/mob/apc/a/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.mob.apc.impl.IAidlInterface"

    .line 17
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    instance-of v1, v0, Lcom/mob/apc/a/d;

    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Lcom/mob/apc/a/d;

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/mob/apc/a/d$a;

    invoke-direct {v0, p0}, Lcom/mob/apc/a/d$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.mob.apc.impl.IAidlInterface"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 35
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 39
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-static {p2}, Lcom/mob/apc/a/e;->a(Landroid/os/Parcel;)Lcom/mob/apc/a/e;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/mob/apc/a/d;->a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;

    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1, p3, v0}, Lcom/mob/apc/a/e;->a(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0
.end method
