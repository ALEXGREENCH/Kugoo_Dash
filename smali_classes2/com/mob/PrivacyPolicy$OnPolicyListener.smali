.class public interface abstract Lcom/mob/PrivacyPolicy$OnPolicyListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/PrivacyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPolicyListener"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/mob/PrivacyPolicy;)V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method
