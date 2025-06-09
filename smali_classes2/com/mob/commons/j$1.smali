.class Lcom/mob/commons/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/j;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Z

.field final synthetic c:Lcom/mob/commons/j;


# direct methods
.method constructor <init>(Lcom/mob/commons/j;I[Z)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    iput p2, p0, Lcom/mob/commons/j$1;->a:I

    iput-object p3, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 213
    iget v0, p0, Lcom/mob/commons/j$1;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->cx()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 247
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "002Eei8j"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->isRooted()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 241
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "002!dj^i"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->isMwpy()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 235
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "0027fg*j"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->vpn()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 229
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "002:ddHj"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->usbEnable()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 223
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "002Xdgdc"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/mob/commons/j$1;->b:[Z

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->checkUA()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 217
    iget-object p1, p0, Lcom/mob/commons/j$1;->c:Lcom/mob/commons/j;

    invoke-static {p1}, Lcom/mob/commons/j;->a(Lcom/mob/commons/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "002^dgQc"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/j$1;->b:[Z

    aget-boolean v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
