.class final Lcn/smssdk/gui/SearchEngine$1;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$afterPrepare:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/smssdk/gui/SearchEngine$1;->val$afterPrepare:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "smssdk_pydb"

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Lcn/smssdk/gui/SearchEngine;->access$000()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/smssdk/gui/SearchEngine;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v1, :cond_2

    .line 31
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_pydb"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getRawRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcn/smssdk/gui/SearchEngine;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 41
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/SearchEngine;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 44
    :try_start_2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcn/smssdk/gui/SearchEngine;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 49
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/smssdk/gui/SearchEngine$1;->val$afterPrepare:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 50
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
