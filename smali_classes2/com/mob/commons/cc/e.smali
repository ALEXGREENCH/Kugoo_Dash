.class public Lcom/mob/commons/cc/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/NotificationManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/lang/Class<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "025c8dj fdifZegdk)i3diefdi,cdi@didk!e@ed+hdeefg"

    .line 13
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 p5, 0x1a

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p5, :cond_0

    array-length p2, p4

    if-ne p2, p7, :cond_0

    aget-object p2, p4, p6

    instance-of v0, p2, Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 14
    check-cast p2, Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return p7

    :cond_0
    const-string p2, "006eNdk1i2diefec"

    .line 16
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 17
    array-length p2, p4

    if-ne p2, v0, :cond_1

    .line 18
    aget-object p2, p4, p6

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p4, p7

    check-cast p3, Landroid/app/Notification;

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return p7

    .line 20
    :cond_1
    array-length p2, p4

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    .line 21
    aget-object p2, p4, p6

    check-cast p2, Ljava/lang/String;

    aget-object p3, p4, p7

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aget-object p4, p4, v0

    check-cast p4, Landroid/app/Notification;

    invoke-virtual {p1, p2, p3, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return p7

    :cond_2
    const-string p2, "025BdcQfgfifRegdk4iKdiefdi$cdiNdidk?eUedIhdeefg"

    .line 24
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p5, :cond_3

    array-length p2, p4

    if-ne p2, p7, :cond_3

    .line 25
    aget-object p2, p4, p6

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return p7

    :cond_3
    const-string p2, "006cdecfg"

    .line 27
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 28
    array-length p2, p4

    if-ne p2, p7, :cond_4

    .line 29
    aget-object p2, p4, p6

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return p7

    .line 31
    :cond_4
    array-length p2, p4

    if-ne p2, v0, :cond_5

    .line 32
    aget-object p2, p4, p6

    check-cast p2, Ljava/lang/String;

    aget-object p3, p4, p7

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return p7

    :cond_5
    return p6
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 10
    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/e;->a(Landroid/app/NotificationManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
