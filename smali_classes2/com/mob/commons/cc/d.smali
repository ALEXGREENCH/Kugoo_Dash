.class public Lcom/mob/commons/cc/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/mob/tools/network/NetworkHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/d;->a:Lcom/mob/tools/network/NetworkHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mob/tools/network/NetCommunicator;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/network/NetCommunicator;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/mob/commons/cc/d;->a:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/mob/commons/cc/d;->a:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/mob/commons/cc/d;->a:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/d;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/d;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/d;",
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

    const-string p1, "hGet"

    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x2

    const/4 p5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    aget-object p1, p4, v1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v0

    check-cast p3, Ljava/util/HashMap;

    aget-object p2, p4, p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1, p3, p2}, Lcom/mob/commons/cc/d;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 38
    aput-object p1, p7, v1

    .line 39
    aput-object p5, p6, v1

    :goto_0
    return v0

    :cond_0
    const-string p1, "pst"

    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 44
    :try_start_1
    aget-object p1, p4, v1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v0

    check-cast p3, Ljava/util/HashMap;

    aget-object p2, p4, p2

    check-cast p2, Ljava/util/HashMap;

    aget-object p4, p4, v2

    check-cast p4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-static {p1, p3, p2, p4}, Lcom/mob/commons/cc/d;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 46
    aput-object p1, p7, v1

    .line 47
    aput-object p5, p6, v1

    :goto_1
    return v0

    :cond_1
    const-string p1, "0087edelghXfh+el0e8ed"

    .line 50
    invoke-static {p1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    :try_start_2
    aget-object p1, p4, v1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v0

    check-cast p3, Ljava/io/OutputStream;

    aget-object p2, p4, p2

    check-cast p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-static {p1, p3, p2}, Lcom/mob/commons/cc/d;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 54
    aput-object p1, p7, v1

    .line 55
    aput-object p5, p6, v1

    :goto_2
    return v0

    :cond_2
    const-string p1, "007*ek:gUeffmfd!fd"

    .line 58
    invoke-static {p1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    :try_start_3
    aget-object p1, p4, v1

    check-cast p1, Lcom/mob/tools/network/NetCommunicator;

    aget-object p3, p4, v0

    check-cast p3, Ljava/util/HashMap;

    aget-object p2, p4, p2

    check-cast p2, Ljava/util/HashMap;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    aget-object p4, p4, v3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p1, p3, p2, v2, p4}, Lcom/mob/commons/cc/d;->a(Lcom/mob/tools/network/NetCommunicator;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p6, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 62
    aput-object p1, p7, v1

    .line 63
    aput-object p5, p6, v1

    :goto_3
    return v0

    :cond_3
    return v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/mob/commons/cc/d;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/d;->a(Lcom/mob/commons/cc/d;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
