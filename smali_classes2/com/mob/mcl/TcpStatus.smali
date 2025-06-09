.class public Lcom/mob/mcl/TcpStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# static fields
.field public static final TYPE_FORCE_CLOSE:I = 0x16

.field public static final TYPE_INIT_FLOW_END:I = 0x14

.field public static final TYPE_INIT_FLOW_EXCEPTION:I = 0x17

.field public static final TYPE_REGISTER_FAILED:I = 0x18

.field public static final TYPE_REGISTER_SUCCESS:I = 0xa

.field public static final TYPE_TCP_UNAVAILABLE:I = 0x15


# instance fields
.field public code:I

.field public detailedMsg:Ljava/lang/String;

.field public msg:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/mob/mcl/TcpStatus;->code:I

    .line 22
    iput-object p2, p0, Lcom/mob/mcl/TcpStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public static obtain(I)Lcom/mob/mcl/TcpStatus;
    .locals 3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "0:unknown(rare status)"

    goto :goto_0

    :pswitch_0
    const-string p0, "24:register failed"

    goto :goto_0

    :pswitch_1
    const-string p0, "23:tcp init flow exception(rare status)"

    goto :goto_0

    :pswitch_2
    const-string p0, "22:tcp force close(rare status)"

    goto :goto_0

    :pswitch_3
    const-string p0, "21:tcp unavailable"

    goto :goto_0

    :pswitch_4
    const-string p0, "20:tcp init flow end(rare status)"

    goto :goto_0

    :cond_0
    const-string p0, "10:tcp register success"

    :goto_0
    const-string v0, ":"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance v0, Lcom/mob/mcl/TcpStatus;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/mob/mcl/TcpStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setDetailedMsg(Ljava/lang/String;)Lcom/mob/mcl/TcpStatus;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mob/mcl/TcpStatus;->detailedMsg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TcpStatus[code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mob/mcl/TcpStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/TcpStatus;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detailedMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/TcpStatus;->detailedMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
