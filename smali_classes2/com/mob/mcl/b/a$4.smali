.class Lcom/mob/mcl/b/a$4;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/b/a;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/mob/mcl/b/a$4;->a:Z

    iput p2, p0, Lcom/mob/mcl/b/a$4;->b:I

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_6

    .line 125
    iget-boolean p1, p0, Lcom/mob/mcl/b/a$4;->a:Z

    if-nez p1, :cond_5

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 126
    iget p1, p0, Lcom/mob/mcl/b/a$4;->b:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    add-int/2addr p1, v1

    .line 127
    invoke-static {p1, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    add-int/2addr p1, v1

    const/16 v0, 0x1e

    .line 129
    invoke-static {p1, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    add-int/2addr p1, v1

    const/16 v0, 0x3c

    .line 131
    invoke-static {p1, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    add-int/2addr p1, v1

    const/16 v0, 0xb4

    .line 133
    invoke-static {p1, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    add-int/2addr p1, v1

    const/16 v0, 0x12c

    .line 135
    invoke-static {p1, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/TcpStatus;)V

    goto :goto_0

    .line 140
    :cond_5
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/TcpStatus;)V

    goto :goto_0

    .line 143
    :cond_6
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-static {v0}, Lcom/mob/mcl/TcpStatus;->obtain(I)Lcom/mob/mcl/TcpStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/TcpStatus;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/b/a$4;->a(Ljava/lang/Boolean;)V

    return-void
.end method
