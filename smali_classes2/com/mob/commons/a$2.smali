.class Lcom/mob/commons/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->a(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/commons/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a;Ljava/util/HashMap;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/mob/commons/a$2;->b:Lcom/mob/commons/a;

    iput-object p2, p0, Lcom/mob/commons/a$2;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 443
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getModel()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/commons/a$2;->a:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/mob/commons/a;->a(Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    .line 444
    iget-object v0, p0, Lcom/mob/commons/a$2;->b:Lcom/mob/commons/a;

    invoke-static {v0}, Lcom/mob/commons/a;->e(Lcom/mob/commons/a;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->writeToFileNoCompress(Ljava/io/File;[B)V

    const/4 p1, 0x0

    return p1
.end method
