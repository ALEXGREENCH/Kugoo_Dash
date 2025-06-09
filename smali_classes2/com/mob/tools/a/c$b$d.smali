.class public final Lcom/mob/tools/a/c$b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/mob/tools/a/c$b$f;

.field private final b:Ljava/lang/reflect/Member;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 743
    iput-object v0, p0, Lcom/mob/tools/a/c$b$d;->a:Lcom/mob/tools/a/c$b$f;

    .line 745
    iput-object v0, p0, Lcom/mob/tools/a/c$b$d;->b:Ljava/lang/reflect/Member;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/c$b$d;)Ljava/lang/reflect/Member;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/mob/tools/a/c$b$d;->b:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/tools/a/c$b$d;)Lcom/mob/tools/a/c$b$f;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/mob/tools/a/c$b$d;->a:Lcom/mob/tools/a/c$b$f;

    return-object p0
.end method
