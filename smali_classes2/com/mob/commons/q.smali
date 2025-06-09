.class public Lcom/mob/commons/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/q$a;,
        Lcom/mob/commons/q$b;,
        Lcom/mob/commons/q$c;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field private static b:Lcom/mob/commons/q;


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "f53c224aefb38daa0825c1b8ea691b16d2e16db10880548afddd780c6670a091a11dafa954ea4a9483797fda1045d2693a08daa48cf9cedce1e8733b857304cb"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/commons/q;->d:Ljava/math/BigInteger;

    .line 42
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "27749621e6ca022469645faed16e8261acf6af822467382d55c24bb9bc02356ab16e76ddc799dc8ba6b4f110411996eeb63505c9dcf969d3fc085d712f0f1a9713b67aa1128d7cc41bda363afb0ec7ade60e542a4e22869395331cc0096de412034551e98bb2629ae1b7168b8bc82006d064ab335d8567283e70beb6a49e9423"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/commons/q;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/q;
    .locals 2

    const-class v0, Lcom/mob/commons/q;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/mob/commons/q;->b:Lcom/mob/commons/q;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/mob/commons/q;

    invoke-direct {v1}, Lcom/mob/commons/q;-><init>()V

    sput-object v1, Lcom/mob/commons/q;->b:Lcom/mob/commons/q;

    .line 52
    :cond_0
    sget-object v1, Lcom/mob/commons/q;->b:Lcom/mob/commons/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(I)Lcom/mob/tools/a;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/mob/commons/q;->b(I)Lcom/mob/tools/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/commons/v;->c()[B

    move-result-object v0

    .line 157
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 160
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    :try_start_2
    new-instance v7, Lcom/mob/tools/utils/MobRSA;

    const/16 v8, 0x400

    invoke-direct {v7, v8}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    iget-object v8, p0, Lcom/mob/commons/q;->d:Ljava/math/BigInteger;

    iget-object v9, p0, Lcom/mob/commons/q;->e:Ljava/math/BigInteger;

    invoke-virtual {v7, v0, v8, v9}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 162
    array-length v8, v7

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    const-string v7, "utf-8"

    .line 164
    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 165
    array-length v0, p1

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v4

    aput-object v2, p1, v3

    .line 169
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v6, v1

    :goto_0
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v6, v0, v4

    aput-object v2, v0, v3

    .line 169
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 170
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 173
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static synthetic a(Lcom/mob/commons/q;Ljava/lang/Runnable;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mob/commons/q;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/mob/commons/q;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "005_fn-iLfm1e.gj"

    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/commons/q;->c:Ljava/io/File;

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/q;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/q;->c:Ljava/io/File;

    new-instance v1, Lcom/mob/commons/q$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/commons/q$1;-><init>(Lcom/mob/commons/q;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/mob/commons/p;->a(Ljava/io/File;Lcom/mob/commons/o;)Z

    move-result p1

    return p1
.end method

.method private static b(I)Lcom/mob/tools/a;
    .locals 4

    .line 86
    new-instance v0, Lcom/mob/tools/a;

    const-string v1, "005(fnfh_eiOgl"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x32

    invoke-direct {v0, v2, p0, v1}, Lcom/mob/tools/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 4

    .line 136
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mob/commons/q;->a:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "015eg3fnhk:jfDfl:hShkfegjfn3i fmgl"

    .line 139
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "007lfeEgj(fYglGh"

    .line 141
    invoke-static {v3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "008l$flfkfmflfk-k<ge"

    .line 142
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ver"

    .line 143
    sget v2, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "003Ifhhkgl"

    .line 144
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/mob/commons/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object p1

    const-string p2, "013@hkThg fehlflfmPfMfeDefNhk;k"

    invoke-static {p2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 145
    invoke-static {p1, p2, v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v1
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 62
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[LGSM] Sd curr"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 64
    new-instance v0, Lcom/mob/commons/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/commons/q$a;-><init>(Lcom/mob/commons/q$1;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/mob/commons/q$a;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/mob/commons/q$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/commons/q$a;->run()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[LGSM] Sd last"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 58
    sget-object v0, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mob/commons/q$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mob/commons/q$c;-><init>(Lcom/mob/commons/q$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
