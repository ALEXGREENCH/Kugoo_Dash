.class public interface abstract Lcom/mob/tools/log/LogCollector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LEVEL_CRASH:I = 0x1

.field public static final LEVEL_NATIVE:I = 0x2

.field public static final LEVEL_NORMAL:I = 0x0

.field public static final LEVEL_NORMAL_UPLOAD:I = 0x3


# virtual methods
.method public abstract log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method
