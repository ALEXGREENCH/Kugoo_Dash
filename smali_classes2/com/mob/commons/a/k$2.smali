.class Lcom/mob/commons/a/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/k;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/mob/commons/a/k;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/k;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/mob/commons/a/k$2;->c:Lcom/mob/commons/a/k;

    iput-object p2, p0, Lcom/mob/commons/a/k$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/a/k$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 111
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfof([I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/mob/commons/a/k$2;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 115
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v3, 0x200000

    .line 117
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v3

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    .line 118
    :goto_1
    iget-object v3, p0, Lcom/mob/commons/a/k$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/a/k$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    :goto_2
    return-void
.end method
