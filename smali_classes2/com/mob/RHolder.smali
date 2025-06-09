.class public Lcom/mob/RHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/mob/RHolder;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mob/RHolder;
    .locals 2

    .line 15
    sget-object v0, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/mob/RHolder;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/mob/RHolder;

    invoke-direct {v1}, Lcom/mob/RHolder;-><init>()V

    sput-object v1, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    return-object v0
.end method


# virtual methods
.method public getActivityThemeId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mob/RHolder;->b:I

    return v0
.end method

.method public getDialogLayoutId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mob/RHolder;->c:I

    return v0
.end method

.method public getDialogThemeId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/mob/RHolder;->d:I

    return v0
.end method

.method public setActivityThemeId(I)Lcom/mob/RHolder;
    .locals 0

    .line 26
    iput p1, p0, Lcom/mob/RHolder;->b:I

    .line 27
    sget-object p1, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    return-object p1
.end method

.method public setDialogLayoutId(I)Lcom/mob/RHolder;
    .locals 0

    .line 35
    iput p1, p0, Lcom/mob/RHolder;->c:I

    .line 36
    sget-object p1, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    return-object p1
.end method

.method public setDialogThemeId(I)Lcom/mob/RHolder;
    .locals 0

    .line 44
    iput p1, p0, Lcom/mob/RHolder;->d:I

    .line 45
    sget-object p1, Lcom/mob/RHolder;->a:Lcom/mob/RHolder;

    return-object p1
.end method
