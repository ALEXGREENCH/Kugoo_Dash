.class public interface abstract Lcom/mob/mcl/MobMCL$ELPMessageListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mcl/MobMCL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ELPMessageListener"
.end annotation


# virtual methods
.method public abstract messageReceived(Landroid/os/Bundle;)Z
.end method
