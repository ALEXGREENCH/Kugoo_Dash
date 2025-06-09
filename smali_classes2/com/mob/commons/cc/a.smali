.class public Lcom/mob/commons/cc/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/mob/commons/cc/r;

.field private static final b:Lcom/mob/commons/cc/j;

.field private static final c:Lcom/mob/commons/cc/o;

.field private static volatile d:Lcom/mob/commons/cc/m;

.field private static volatile e:Lcom/mob/commons/cc/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/mob/commons/cc/r;

    invoke-direct {v0}, Lcom/mob/commons/cc/r;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/a;->a:Lcom/mob/commons/cc/r;

    .line 23
    new-instance v0, Lcom/mob/commons/cc/j;

    invoke-direct {v0}, Lcom/mob/commons/cc/j;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/a;->b:Lcom/mob/commons/cc/j;

    .line 24
    new-instance v0, Lcom/mob/commons/cc/o;

    invoke-direct {v0}, Lcom/mob/commons/cc/o;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/a;->c:Lcom/mob/commons/cc/o;

    .line 31
    :try_start_0
    new-instance v0, Lcom/mob/commons/cc/m;

    new-instance v1, Lcom/mob/commons/cc/a$1;

    invoke-direct {v1}, Lcom/mob/commons/cc/a$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/m;-><init>(Lcom/mob/commons/cc/m$a;)V

    sput-object v0, Lcom/mob/commons/cc/a;->d:Lcom/mob/commons/cc/m;

    .line 42
    new-instance v0, Lcom/mob/commons/cc/m;

    new-instance v1, Lcom/mob/commons/cc/a$2;

    invoke-direct {v1}, Lcom/mob/commons/cc/a$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/m;-><init>(Lcom/mob/commons/cc/m$a;)V

    sput-object v0, Lcom/mob/commons/cc/a;->e:Lcom/mob/commons/cc/m;

    .line 48
    sget-object v0, Lcom/mob/commons/cc/a;->d:Lcom/mob/commons/cc/m;

    const-string v1, "tt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a()I
    .locals 1

    .line 53
    invoke-static {}, Lcom/mob/commons/cc/x;->a()I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    check-cast p0, Lcom/mob/commons/cc/z;

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/z;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 69
    invoke-static {v0}, Lcom/mob/commons/cc/x;->a([Ljava/lang/String;)Lcom/mob/commons/cc/x$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/x$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 73
    invoke-static {v0}, Lcom/mob/commons/cc/x;->a([Ljava/lang/String;)Lcom/mob/commons/cc/x$c;

    move-result-object p1

    const-string v0, "ss_dhMap"

    .line 74
    invoke-virtual {p1, v0, p3}, Lcom/mob/commons/cc/x$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object p3

    const-string v0, "ss_dataMaps"

    invoke-virtual {p3, v0, p4}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    const/4 p3, 0x0

    .line 75
    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/x$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    invoke-static {v0}, Lcom/mob/commons/cc/x;->a([[B)Lcom/mob/commons/cc/x$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/x$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static a(Lcom/mob/commons/cc/x$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "012%ef hdYbh2bgAbgbi%c:cjMdg"

    .line 89
    invoke-static {v0}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/j;

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/x$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "003?faceda"

    .line 90
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/d;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "SBSP"

    const-class v2, Lcom/mob/commons/cc/o;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "004Tfacjejdi"

    .line 92
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/g;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "015_cjdhdi(bcWbaTedYbhda:fHbh@db4ba"

    .line 93
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/tools/MobHandlerThread;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "019?cjdhdhbhbi4bGbaOab*dg1g>eh$dadGbgbbKd!bh"

    .line 94
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/i;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "017@cjdhcbbiWcgdcg,ehJd%dgbi\'e.bbSdXbh"

    .line 95
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/l;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "0197cjdhcj,d_bhbbbg%ad<cbbi.ccdag7bgbiNc"

    .line 96
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/p;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "017QcjdhcbbiCcgdcg1efdddgNd@bhbb2dVbh"

    .line 97
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/k;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "017+cjdhceIdgNdebibhcfcb[beeEddSba_cf"

    .line 98
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/n;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "009Lcjdhdi*bc)baLed!bh"

    .line 99
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/cc/m;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "003Ufacecb"

    .line 100
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/tools/network/NetCommunicator;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "004Sfacedaef"

    .line 101
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "NoVaDataException"

    const-class v2, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "003Wdibicc"

    .line 103
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mob/commons/n;

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/i;

    const-class v2, Lcom/mob/commons/cc/i;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/k;

    const-class v2, Lcom/mob/commons/cc/k;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/p;

    const-class v2, Lcom/mob/commons/cc/q;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/n;

    const-class v2, Lcom/mob/commons/cc/n;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/r;

    const-class v2, Lcom/mob/commons/cc/r;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/j;

    const-class v2, Lcom/mob/commons/cc/j;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/d;

    const-class v2, Lcom/mob/commons/cc/d;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/g;

    const-class v2, Lcom/mob/commons/cc/h;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    const-class v2, Lcom/mob/commons/cc/c;

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManager;

    const-class v2, Lcom/mob/commons/cc/f;

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    const-class v2, Lcom/mob/commons/cc/e;

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/cc/o;

    const-class v2, Lcom/mob/commons/cc/o;

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-class v1, Lcom/mob/commons/n;

    const-class v2, Lcom/mob/commons/cc/b;

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "ss_sdh"

    sget-object v2, Lcom/mob/commons/cc/a;->c:Lcom/mob/commons/cc/o;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "ss_opSet"

    sget-object v2, Lcom/mob/commons/cc/a;->b:Lcom/mob/commons/cc/j;

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "ss_suls"

    sget-object v2, Lcom/mob/commons/cc/a;->a:Lcom/mob/commons/cc/r;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object v0

    const-string v1, "015UdgdgbfIa]biKcgd.cg1g@ejZbGbhNbYbd"

    .line 120
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object p1

    const-string v0, "014.dgdgbfdg*gbIbhJgZej?bPbhSb]bddg"

    .line 121
    invoke-static {v0}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object p1

    const-string p2, "012?dgdgbfdgLgbDbhLg-dabgbdTd"

    .line 122
    invoke-static {p2}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object p1

    const-string p2, "006^dgdgbfbdbaIh"

    .line 123
    invoke-static {p2}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/x$d;

    move-result-object p1

    const-string p2, "016aXbibdbdbi)cbh%bjdgbacfbjGa%baRa"

    .line 124
    invoke-static {p2}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/x$d;->a(Ljava/lang/String;)Lcom/mob/commons/cc/x$d;

    .line 125
    invoke-virtual {p0}, Lcom/mob/commons/cc/x$c;->a()V

    return-void
.end method

.method static synthetic b()Lcom/mob/commons/cc/m;
    .locals 1

    .line 21
    sget-object v0, Lcom/mob/commons/cc/a;->e:Lcom/mob/commons/cc/m;

    return-object v0
.end method
