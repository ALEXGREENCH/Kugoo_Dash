.class public Lcn/smssdk/gui/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/SearchEngine$SearchIndex;
    }
.end annotation


# static fields
.field private static final DB_FILE:Ljava/lang/String; = "smssdk_pydb"

.field private static hanzi2Pinyin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private caseSensitive:Z

.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/smssdk/gui/SearchEngine$SearchIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 19
    sget-object v0, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 19
    sput-object p0, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    return-object p0
.end method

.method public static prepare(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 26
    new-instance v0, Lcn/smssdk/gui/SearchEngine$1;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/gui/SearchEngine$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 56
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/gui/SearchEngine$SearchIndex;

    .line 89
    iget-boolean v3, p0, Lcn/smssdk/gui/SearchEngine;->caseSensitive:Z

    invoke-static {v2, p1, v3}, Lcn/smssdk/gui/SearchEngine$SearchIndex;->access$100(Lcn/smssdk/gui/SearchEngine$SearchIndex;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v2}, Lcn/smssdk/gui/SearchEngine$SearchIndex;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcn/smssdk/gui/SearchEngine;->caseSensitive:Z

    return-void
.end method

.method public setIndex(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    new-instance v2, Lcn/smssdk/gui/SearchEngine$SearchIndex;

    sget-object v3, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    invoke-direct {v2, v0, v3}, Lcn/smssdk/gui/SearchEngine$SearchIndex;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndexSet(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    new-instance v2, Lcn/smssdk/gui/SearchEngine$SearchIndex;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    sget-object v4, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    invoke-direct {v2, v3, v0, v4}, Lcn/smssdk/gui/SearchEngine$SearchIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
