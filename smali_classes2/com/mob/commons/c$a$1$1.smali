.class Lcom/mob/commons/c$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c$a$1;->a(Lcom/mob/tools/utils/FileLocker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/c$a$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/c$a$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "004h)chceXe"

    .line 149
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v2, v2, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v2}, Lcom/mob/commons/c$a;->a(Lcom/mob/commons/c$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v1, v1, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v1}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v1, v1, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v1}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006ciiZdg2eOdb"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/commons/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v1, v1, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v1}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006ciiiBdgdi"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v1, v1, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v1}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006cii7cc?e;ci"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "010Jeh@hYci@cheUdidbddcb"

    .line 155
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v1, v1, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v1}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v6, "010Beh-hWci\'cheBdidbddcb"

    invoke-static {v6}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 161
    iget-object v4, p0, Lcom/mob/commons/c$a$1$1;->a:Lcom/mob/commons/c$a$1;

    iget-object v4, v4, Lcom/mob/commons/c$a$1;->a:Lcom/mob/commons/c$a;

    invoke-static {v4}, Lcom/mob/commons/c$a;->b(Lcom/mob/commons/c$a;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 162
    invoke-static {v1, v4}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    const-string v4, "004CcbGchc"

    .line 163
    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J

    const-string v0, "004Icb0e5cfJi"

    .line 167
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 168
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object p1

    const-string v4, "004d:cj$de"

    .line 169
    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x78

    .line 172
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    invoke-static {}, Lcom/mob/commons/c$b;->a()Lcom/mob/commons/c$b;

    move-result-object p1

    if-eqz p1, :cond_3

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/mob/commons/c$b;->run()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/mob/commons/a/l;->a(JLjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    invoke-static {p1}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;)V

    :cond_3
    :goto_0
    return-void
.end method
