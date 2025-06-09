.class public Lcom/mob/tools/a/c$b$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:J

.field private final c:Ljava/lang/invoke/MethodType;

.field private d:Ljava/lang/invoke/MethodType;

.field private e:Lcom/mob/tools/a/c$b$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 728
    iput-object v0, p0, Lcom/mob/tools/a/c$b$f;->c:Ljava/lang/invoke/MethodType;

    const/4 v0, 0x0

    .line 731
    iput v0, p0, Lcom/mob/tools/a/c$b$f;->a:I

    const-wide/16 v0, 0x0

    .line 734
    iput-wide v0, p0, Lcom/mob/tools/a/c$b$f;->b:J

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/c$b$f;)Ljava/lang/invoke/MethodType;
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/mob/tools/a/c$b$f;->c:Ljava/lang/invoke/MethodType;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/tools/a/c$b$f;)Ljava/lang/invoke/MethodType;
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/mob/tools/a/c$b$f;->d:Ljava/lang/invoke/MethodType;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/tools/a/c$b$f;)Lcom/mob/tools/a/c$b$f;
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/mob/tools/a/c$b$f;->e:Lcom/mob/tools/a/c$b$f;

    return-object p0
.end method
