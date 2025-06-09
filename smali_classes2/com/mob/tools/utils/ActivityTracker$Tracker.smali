.class public interface abstract Lcom/mob/tools/utils/ActivityTracker$Tracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/ActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tracker"
.end annotation


# virtual methods
.method public abstract onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract onPaused(Landroid/app/Activity;)V
.end method

.method public abstract onResumed(Landroid/app/Activity;)V
.end method

.method public abstract onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onStarted(Landroid/app/Activity;)V
.end method

.method public abstract onStopped(Landroid/app/Activity;)V
.end method
