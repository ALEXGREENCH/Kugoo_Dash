.class public Lcn/smssdk/logger/b;
.super Ljava/lang/Object;
.source "DBLoggerEngine.java"

# interfaces
.implements Lcn/smssdk/logger/ILoggerEngine;


# static fields
.field private static b:Lcn/smssdk/logger/b;


# instance fields
.field private a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loggerdb"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "method"

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "beginTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string/jumbo v1, "totalDesc"

    const-string v2, "VARCHAR"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Lcn/smssdk/logger/b;
    .locals 2

    .line 1
    sget-object v0, Lcn/smssdk/logger/b;->b:Lcn/smssdk/logger/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/smssdk/logger/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/smssdk/logger/b;->b:Lcn/smssdk/logger/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/smssdk/logger/b;

    invoke-direct {v1}, Lcn/smssdk/logger/b;-><init>()V

    sput-object v1, Lcn/smssdk/logger/b;->b:Lcn/smssdk/logger/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcn/smssdk/logger/b;->b:Lcn/smssdk/logger/b;

    return-object v0
.end method


# virtual methods
.method public deleteAllLogItems()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteLogItem(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 3
    :try_start_0
    iget-object p1, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string p2, "beginTime=?"

    invoke-static {p1, p2, v0}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLogList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/smssdk/logger/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2, v2}, Lcom/mob/tools/utils/SQLiteHelper;->query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "method"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "beginTime"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "totalDesc"

    .line 9
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v5, Lcn/smssdk/logger/c;

    invoke-direct {v5}, Lcn/smssdk/logger/c;-><init>()V

    .line 11
    invoke-virtual {v5, v2}, Lcn/smssdk/logger/c;->b(I)V

    .line 12
    invoke-virtual {v5, v3}, Lcn/smssdk/logger/c;->a(I)V

    .line 13
    invoke-virtual {v5, v4}, Lcn/smssdk/logger/c;->a(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 20
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "query db error"

    aput-object v5, v3, v4

    const-string v4, "[SMSSDK] %s"

    invoke-virtual {v2, v1, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method public insertOneRequestLog(IJLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "beginTime"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p1, "totalDesc"

    .line 4
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcn/smssdk/logger/b;->a:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
