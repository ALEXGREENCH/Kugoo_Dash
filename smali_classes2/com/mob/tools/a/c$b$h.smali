.class public Lcom/mob/tools/a/c$b$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 789
    sget v0, Lcom/mob/tools/a/c$b$h;->a:I

    return v0
.end method

.method static synthetic a(Lcom/mob/tools/a/c$b$h;)I
    .locals 0

    .line 789
    iget p0, p0, Lcom/mob/tools/a/c$b$h;->c:I

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .line 789
    sget v0, Lcom/mob/tools/a/c$b$h;->b:I

    return v0
.end method

.method static synthetic b(Lcom/mob/tools/a/c$b$h;)I
    .locals 0

    .line 789
    iget p0, p0, Lcom/mob/tools/a/c$b$h;->d:I

    return p0
.end method
