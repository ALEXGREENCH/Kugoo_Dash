.class Lcom/mob/tools/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a;->a(Lcom/mob/tools/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lcom/mob/tools/a$a;

.field final synthetic c:Lcom/mob/tools/a;


# direct methods
.method constructor <init>(Lcom/mob/tools/a;[Ljava/io/File;Lcom/mob/tools/a$a;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mob/tools/a$2;->c:Lcom/mob/tools/a;

    iput-object p2, p0, Lcom/mob/tools/a$2;->a:[Ljava/io/File;

    iput-object p3, p0, Lcom/mob/tools/a$2;->b:Lcom/mob/tools/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 14

    .line 166
    iget-object v0, p0, Lcom/mob/tools/a$2;->a:[Ljava/io/File;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 167
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v6, p0, Lcom/mob/tools/a$2;->c:Lcom/mob/tools/a;

    invoke-static {v6, v5}, Lcom/mob/tools/a;->a(Lcom/mob/tools/a;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_5

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 175
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 176
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 179
    iget-object v11, p0, Lcom/mob/tools/a$2;->b:Lcom/mob/tools/a$a;

    new-instance v12, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v13, "utf-8"

    invoke-direct {v12, v6, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v11, v12}, Lcom/mob/tools/a$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object v6, p0, Lcom/mob/tools/a$2;->b:Lcom/mob/tools/a$a;

    invoke-interface {v6, p1}, Lcom/mob/tools/a$a;->a(Lcom/mob/tools/utils/DH$DHResponse;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    const-string v11, "[LGSM] D l"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v10, v4, v2

    aput-object v9, v4, v8

    .line 188
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v10, v6

    :goto_2
    move-object v6, v9

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v10, v6

    .line 186
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v10, v4, v2

    aput-object v6, v4, v8

    .line 188
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 190
    :goto_4
    iget-object v4, p0, Lcom/mob/tools/a$2;->c:Lcom/mob/tools/a;

    invoke-static {v4, v5}, Lcom/mob/tools/a;->b(Lcom/mob/tools/a;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_3
    move-exception p1

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v10, v0, v2

    aput-object v6, v0, v8

    .line 188
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 190
    iget-object v0, p0, Lcom/mob/tools/a$2;->c:Lcom/mob/tools/a;

    invoke-static {v0, v5}, Lcom/mob/tools/a;->b(Lcom/mob/tools/a;Ljava/lang/String;)V

    .line 191
    throw p1

    :cond_3
    return-void
.end method
