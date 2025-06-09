.class Lcom/mob/mcl/Tmpc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/HttpConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/b/b;


# direct methods
.method constructor <init>(Lcom/mob/mcl/b/b;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mob/mcl/Tmpc$1;->a:Lcom/mob/mcl/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$1;->a:Lcom/mob/mcl/b/b;

    invoke-virtual {v0}, Lcom/mob/mcl/b/b;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$1;->a:Lcom/mob/mcl/b/b;

    invoke-virtual {v0}, Lcom/mob/mcl/b/b;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$1;->a:Lcom/mob/mcl/b/b;

    invoke-virtual {v0}, Lcom/mob/mcl/b/b;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mob/mcl/Tmpc$1;->a:Lcom/mob/mcl/b/b;

    invoke-virtual {v0}, Lcom/mob/mcl/b/b;->b()I

    move-result v0

    return v0
.end method
