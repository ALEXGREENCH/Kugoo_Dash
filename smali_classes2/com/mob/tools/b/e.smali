.class public Lcom/mob/tools/b/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mob/tools/b/e;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/lang/Object;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/b/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/b/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/b/e;
    .locals 2

    .line 43
    sget-object v0, Lcom/mob/tools/b/e;->b:Lcom/mob/tools/b/e;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/mob/tools/b/e;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/mob/tools/b/e;->b:Lcom/mob/tools/b/e;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/mob/tools/b/e;

    invoke-direct {v1, p0}, Lcom/mob/tools/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/b/e;->b:Lcom/mob/tools/b/e;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/b/e;->b:Lcom/mob/tools/b/e;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;IZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_1

    .line 101
    iget-object p3, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    const-string v3, "014Hfk)gj_hmNedYfi_eQfk-gGffQfYfgel"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    new-array p1, v2, [Ljava/lang/Class;

    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p2, p1, v0

    .line 101
    invoke-static {p3, v3, v4, p1}, Lcom/mob/tools/utils/DH$SyncMtd;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 105
    :cond_1
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 106
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 107
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_3
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-le v3, v4, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    iget-object p3, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 109
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/mob/tools/b/e;->d:Landroid/content/pm/PackageManager;

    const-string v3, "014Hfk[gj7hm^edZfi+eCfk@g5ff[fJfgel"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    new-array p1, v2, [Ljava/lang/Class;

    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p2, p1, v0

    .line 109
    invoke-static {p3, v3, v4, p1}, Lcom/mob/tools/utils/DH$SyncMtd;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "027efMedekelejedemelgjemfmfdgjKjg>eghmekel*kgRek<j2ej-gKgj"

    .line 58
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->importClassNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "003WfkHgj"

    .line 59
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, p2, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethodNoThrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public a()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 71
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "0169fkZgj)ffUfgjYgeededek:gGgjgjYg@gj"

    .line 181
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Enumeration;

    return-object p1
.end method

.method public a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "019+efeh-gYekfdff)fjgfj6fm<g^ekeeejGdg-gj"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    new-array p1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, p1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, p1, p2

    .line 80
    invoke-static {v0, v2, v4, p1, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;JFLjava/lang/Object;)V
    .locals 6

    .line 123
    invoke-static {}, Lcom/mob/commons/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "008hOel5dej)ejel7f"

    .line 126
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "033efIedekelejedemGh[el)dej!ejel.fOemgfel*dej2ejelDf_gfejgjPjgfg-ek"

    .line 127
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "022Qek)gNefehZgOgjBjIgfel0dejGejel?fFfl)kXed[ejgCgj"

    .line 129
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 130
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v4, p3

    const/4 p1, 0x3

    aput-object p5, v4, p1

    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mob/commons/a/l;->c()Landroid/os/Looper;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, v4, p5

    new-array p4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, p4, v5

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, p4, p2

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object p2, p4, p3

    aput-object v1, p4, p1

    const-class p1, Landroid/os/Looper;

    aput-object p1, p4, p5

    .line 129
    invoke-static {v0, v2, v4, p4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 135
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public b()I
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "035efGedekelejedemGkg[ekegejgjgjejelJfEemhkhjgegmeihmglhifhhjeifmgdgegdhj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isPhoneStateDataEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "005ki_el<fg"

    .line 156
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    const-string v2, "014+fk(gj(fhFgjEghelekfigdfd1kg"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 160
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getNetworkType()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 6

    .line 88
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "015>ek-gIgjelOhXee@gEge3dj>ejeeejZj<fd"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    new-array p1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, p1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, p1, p2

    .line 89
    invoke-static {v0, v2, v4, p1, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 141
    invoke-static {}, Lcom/mob/commons/d;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "008h>elCdej6ejelCf"

    .line 143
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "020Cfk4gjDgf1eLgjUjTjdPfGelgh4f8gfelIdej5ejelBf"

    .line 145
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public c()I
    .locals 4

    const-string v0, "035efWedekelejedem)kgXekegejgjgjejel+f7emhkhjgegmeihmglhifhhjeifmgdgegdhj"

    .line 167
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 168
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isPhoneStateDataEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "005kiIelEfg"

    .line 170
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/e;->c:Ljava/lang/Object;

    const-string v2, "018^fkHgj1gmLejeHfh:gjZghelekfigdfd2kg"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 174
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getNetworkType()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public d()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mob/tools/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
