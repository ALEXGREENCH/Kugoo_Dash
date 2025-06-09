.class public abstract Lcom/mob/mcl/BusinessMessageCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/mcl/BusinessMessageListener;


# static fields
.field public static final STATUS_NO_RECEIVED:I = 0x0

.field public static final STATUS_RECEIVED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract messageReceived(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public messageReceived(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
