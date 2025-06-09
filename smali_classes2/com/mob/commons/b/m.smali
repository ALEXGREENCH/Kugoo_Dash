.class public Lcom/mob/commons/b/m;
.super Lcom/mob/commons/b/h;


# instance fields
.field protected c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    const-string p1, "025b;cjceckMge3dbEhci(ckcjBied.chcbckddfg\'iedIddek"

    .line 24
    invoke-static {p1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/m;->c:Ljava/lang/String;

    return-void
.end method

.method private final a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/mob/commons/b/m;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 48
    :try_start_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 49
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/commons/b/m;->b:Ljava/lang/String;

    const/16 v6, 0x40

    .line 50
    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/utils/DH$RequestBuilder;->getMpfo(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v4

    new-instance v5, Lcom/mob/commons/b/m$1;

    invoke-direct {v5, p0, v0}, Lcom/mob/commons/b/m$1;-><init>(Lcom/mob/commons/b/m;Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 51
    invoke-virtual {v4, v5}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    .line 61
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/mob/commons/b/m;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/mob/tools/c;->b(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 65
    array-length v4, v0

    if-lez v4, :cond_2

    .line 66
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v4, "004Bdkejecge"

    .line 67
    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    array-length v5, v0

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_1

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x100

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/b/m;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catchall_0
    :cond_2
    iget-object v7, p0, Lcom/mob/commons/b/m;->c:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v9, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/commons/b/m;->b:Ljava/lang/String;

    aput-object v0, v9, v3

    iget-object v0, p0, Lcom/mob/commons/b/m;->d:Ljava/lang/String;

    aput-object v0, v9, v2

    const/4 v0, 0x2

    aput-object p2, v9, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/m;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "017bGcjceckKge:dbPhci+ckcjLied chcb"

    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "033b:cjceck1ge)db1hciIckcjIied<chcbckddcb1edh^chdedbdkAe>ciccchUbe"

    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "040cbh-chcjZdXckAb_cjceck%geWdbNhci3ckcj9ied@chcbckfgfkfhdfcgddekcgdkfhfifjdddcfh"

    .line 34
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/h$b;
    .locals 2

    .line 39
    new-instance v0, Lcom/mob/commons/b/h$b;

    invoke-direct {v0}, Lcom/mob/commons/b/h$b;-><init>()V

    const-string v1, "004Qfgdjddek"

    .line 40
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mob/commons/b/m;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
