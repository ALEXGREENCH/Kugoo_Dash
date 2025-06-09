.class public final Lcom/mob/tools/a/c$b$g;
.super Lcom/mob/tools/a/c$b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final c:Lcom/mob/tools/a/c$b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 737
    invoke-direct {p0}, Lcom/mob/tools/a/c$b$f;-><init>()V

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcom/mob/tools/a/c$b$g;->c:Lcom/mob/tools/a/c$b$b;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/c$b$g;)Lcom/mob/tools/a/c$b$b;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/mob/tools/a/c$b$g;->c:Lcom/mob/tools/a/c$b$b;

    return-object p0
.end method
