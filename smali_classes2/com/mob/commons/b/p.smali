.class public Lcom/mob/commons/b/p;
.super Lcom/mob/commons/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/p$a;
    }
.end annotation


# instance fields
.field private c:Lcom/mob/commons/b/p$a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/mob/commons/b/p;->c:Lcom/mob/commons/b/p$a;

    const-string p1, "100215079"

    .line 20
    iput-object p1, p0, Lcom/mob/commons/b/p;->d:Ljava/lang/String;

    .line 22
    sget-object p1, Lcom/mob/commons/r;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    sget-object p1, Lcom/mob/commons/r;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/p;->d:Ljava/lang/String;

    .line 25
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oamt vivo appid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/commons/b/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b/p;ZI)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b/p;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .locals 0

    .line 71
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mob/commons/b/p;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/mob/commons/b/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "051eBfm,gkhgkmnneIfmfhfnfffkfffmfnfffhhkfnggfeinflfmfffkfe:h^fl2n3ggfe=hgk)fkghfk@h!flggfe4n1ijhfgghn"

    .line 64
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/mob/commons/b/p;->c:Lcom/mob/commons/b/p$a;

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lcom/mob/commons/b/p$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mob/commons/b/p$a;-><init>(Lcom/mob/commons/b/p;I)V

    iput-object p1, p0, Lcom/mob/commons/b/p;->c:Lcom/mob/commons/b/p$a;

    .line 82
    iget-object p1, p0, Lcom/mob/commons/b/p;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/mob/commons/b/p;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mob/commons/b/p;->c:Lcom/mob/commons/b/p$a;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 8

    .line 35
    invoke-direct {p0, p1}, Lcom/mob/commons/b/p;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 42
    iget-object v0, p0, Lcom/mob/commons/b/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_2

    .line 43
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "005$ff)fiBfi]h"

    .line 44
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    .line 51
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :catchall_0
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/mob/commons/b/p;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-object v1

    :catchall_2
    move-exception v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 51
    :goto_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 55
    :catchall_3
    :cond_3
    :try_start_5
    invoke-direct {p0, p1}, Lcom/mob/commons/b/p;->c(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_4
    move-exception v2

    move-object v0, v1

    .line 47
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_5
    :goto_2
    return-object v1

    :catchall_6
    move-exception v1

    if-eqz v0, :cond_4

    .line 51
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 55
    :catchall_7
    :cond_4
    :try_start_8
    invoke-direct {p0, p1}, Lcom/mob/commons/b/p;->c(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 57
    :catchall_8
    throw v1
.end method

.method protected b()Lcom/mob/commons/b/h$b;
    .locals 2

    .line 29
    new-instance v0, Lcom/mob/commons/b/h$b;

    invoke-direct {v0}, Lcom/mob/commons/b/h$b;-><init>()V

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1}, Lcom/mob/commons/b/p;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
