.class public Lcom/mob/commons/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mob/commons/b/e$a;
    .locals 5

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lcom/mob/commons/b/e$a;->values()[Lcom/mob/commons/b/e$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 128
    invoke-static {v3}, Lcom/mob/commons/b/e$a;->a(Lcom/mob/commons/b/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/mob/commons/b/e$a;->a(Lcom/mob/commons/b/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    invoke-static {v3}, Lcom/mob/commons/b/e$a;->b(Lcom/mob/commons/b/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-static {v3}, Lcom/mob/commons/b/e$a;->b(Lcom/mob/commons/b/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 135
    :cond_2
    invoke-static {}, Lcom/mob/commons/b/e;->a()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/mob/commons/b/e;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 138
    :cond_3
    invoke-static {p0}, Lcom/mob/commons/b/e;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 139
    sget-object p0, Lcom/mob/commons/b/e$a;->x:Lcom/mob/commons/b/e$a;

    return-object p0

    .line 141
    :cond_4
    invoke-static {}, Lcom/mob/commons/b/e;->c()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 142
    sget-object p0, Lcom/mob/commons/b/e$a;->y:Lcom/mob/commons/b/e$a;

    return-object p0

    .line 144
    :cond_5
    sget-object p0, Lcom/mob/commons/b/e$a;->a:Lcom/mob/commons/b/e$a;

    return-object p0

    .line 136
    :cond_6
    :goto_2
    sget-object p0, Lcom/mob/commons/b/e$a;->o:Lcom/mob/commons/b/e$a;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/mob/commons/b/e;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 19
    monitor-exit v0

    return-void

    .line 22
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mob/commons/b/e$a;

    move-result-object v1

    .line 23
    sget-object v2, Lcom/mob/commons/b/e$a;->a:Lcom/mob/commons/b/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    .line 25
    monitor-exit v0

    return-void

    .line 28
    :cond_1
    :try_start_2
    sget-object v2, Lcom/mob/commons/b/e$2;->a:[I

    invoke-virtual {v1}, Lcom/mob/commons/b/e$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 96
    :pswitch_0
    new-instance v1, Lcom/mob/commons/b/c;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto/16 :goto_0

    .line 92
    :pswitch_1
    new-instance v1, Lcom/mob/commons/b/n;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto/16 :goto_0

    .line 88
    :pswitch_2
    new-instance v1, Lcom/mob/commons/b/b;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 84
    :pswitch_3
    new-instance v1, Lcom/mob/commons/b/r;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 78
    :pswitch_4
    new-instance v1, Lcom/mob/commons/b/k;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 74
    :pswitch_5
    new-instance v1, Lcom/mob/commons/b/i;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 68
    :pswitch_6
    new-instance v1, Lcom/mob/commons/b/o;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 64
    :pswitch_7
    new-instance v1, Lcom/mob/commons/b/a;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 60
    :pswitch_8
    new-instance v1, Lcom/mob/commons/b/j;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 54
    :pswitch_9
    new-instance v1, Lcom/mob/commons/b/l;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 50
    :pswitch_a
    new-instance v1, Lcom/mob/commons/b/m;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 45
    :pswitch_b
    new-instance v1, Lcom/mob/commons/b/f;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 41
    :pswitch_c
    new-instance v1, Lcom/mob/commons/b/g;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 37
    :pswitch_d
    new-instance v1, Lcom/mob/commons/b/p;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 33
    :pswitch_e
    new-instance v1, Lcom/mob/commons/b/q;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a()Z
    .locals 2

    const-string v0, "021OflfmfnhhfifkVi>fefnghflThhTfh hTfnCif$hhAhi"

    .line 153
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "008Sieilikikjeikijgn"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 103
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 104
    sget-object v0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    if-eqz v0, :cond_4

    .line 105
    instance-of v1, v0, Lcom/mob/commons/b/f;

    const-string v2, "^[0fF\\-]+"

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/mob/commons/b/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/mob/commons/b/g;

    invoke-direct {v0, p0}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    goto :goto_0

    .line 112
    :cond_1
    instance-of v1, v0, Lcom/mob/commons/b/l;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/mob/commons/b/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 117
    :cond_2
    new-instance v0, Lcom/mob/commons/b/m;

    invoke-direct {v0, p0}, Lcom/mob/commons/b/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    .line 120
    :cond_3
    :goto_0
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/h;

    invoke-virtual {p0}, Lcom/mob/commons/b/h;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Z
    .locals 2

    const-string v0, "015.flfmfnhkhkfifkfn_l3flfmfefi9ek"

    .line 163
    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "007GfiGg+gjIgJfmhi,g"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c()Z
    .locals 2

    const-string v0, "ro.odm.manufacturer"

    .line 191
    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 171
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 172
    invoke-static {p0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p0

    const-string v4, "027eMfmfhfnJe0fmfmPilfHfefnfe$h.fffk ehXfkfehkfiMllNfmflXk"

    .line 173
    invoke-static {v4}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMpfo(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object p0

    new-instance v4, Lcom/mob/commons/b/e$1;

    invoke-direct {v4, v2, v3}, Lcom/mob/commons/b/e$1;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    .line 181
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    aget-object p0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    .line 184
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v1
.end method
