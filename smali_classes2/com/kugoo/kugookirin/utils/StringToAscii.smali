.class public Lcom/kugoo/kugookirin/utils/StringToAscii;
.super Ljava/lang/Object;
.source "StringToAscii.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 39
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 40
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/kugoo/kugookirin/utils/StringToAscii;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    div-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_0

    .line 27
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/StringToAscii;->toHexUtil(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/StringToAscii;->toHex(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    rem-int/lit8 p0, p0, 0x10

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/StringToAscii;->toHexUtil(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHexUtil(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "F"

    goto :goto_0

    :pswitch_1
    const-string p0, "E"

    goto :goto_0

    :pswitch_2
    const-string p0, "D"

    goto :goto_0

    :pswitch_3
    const-string p0, "C"

    goto :goto_0

    :pswitch_4
    const-string p0, "B"

    goto :goto_0

    :pswitch_5
    const-string p0, "A"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
