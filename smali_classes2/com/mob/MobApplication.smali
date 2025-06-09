.class public Lcom/mob/MobApplication;
.super Landroid/app/Application;

# interfaces
.implements Lcom/mob/tools/proguard/ProtectedMemberKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAppSecret()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAppkey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-virtual {p0}, Lcom/mob/MobApplication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/MobApplication;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
