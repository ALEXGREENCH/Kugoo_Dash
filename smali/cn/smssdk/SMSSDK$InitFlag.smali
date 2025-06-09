.class public final enum Lcn/smssdk/SMSSDK$InitFlag;
.super Ljava/lang/Enum;
.source "SMSSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/SMSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/smssdk/SMSSDK$InitFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/smssdk/SMSSDK$InitFlag;

.field public static final enum DEFAULT:Lcn/smssdk/SMSSDK$InitFlag;

.field public static final enum DISABLE_CONTACT:Lcn/smssdk/SMSSDK$InitFlag;

.field public static final enum WARNNING_READCONTACT:Lcn/smssdk/SMSSDK$InitFlag;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WARNNING_READCONTACT_DIALOG_MODE:Lcn/smssdk/SMSSDK$InitFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/smssdk/SMSSDK$InitFlag;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/smssdk/SMSSDK$InitFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/smssdk/SMSSDK$InitFlag;->DEFAULT:Lcn/smssdk/SMSSDK$InitFlag;

    .line 2
    new-instance v1, Lcn/smssdk/SMSSDK$InitFlag;

    const-string v3, "WARNNING_READCONTACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/smssdk/SMSSDK$InitFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/smssdk/SMSSDK$InitFlag;->WARNNING_READCONTACT:Lcn/smssdk/SMSSDK$InitFlag;

    .line 4
    new-instance v3, Lcn/smssdk/SMSSDK$InitFlag;

    const-string v5, "WARNNING_READCONTACT_DIALOG_MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/smssdk/SMSSDK$InitFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/smssdk/SMSSDK$InitFlag;->WARNNING_READCONTACT_DIALOG_MODE:Lcn/smssdk/SMSSDK$InitFlag;

    .line 5
    new-instance v5, Lcn/smssdk/SMSSDK$InitFlag;

    const-string v7, "DISABLE_CONTACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/smssdk/SMSSDK$InitFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/smssdk/SMSSDK$InitFlag;->DISABLE_CONTACT:Lcn/smssdk/SMSSDK$InitFlag;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/smssdk/SMSSDK$InitFlag;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcn/smssdk/SMSSDK$InitFlag;->$VALUES:[Lcn/smssdk/SMSSDK$InitFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/smssdk/SMSSDK$InitFlag;
    .locals 1

    .line 1
    const-class v0, Lcn/smssdk/SMSSDK$InitFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/smssdk/SMSSDK$InitFlag;

    return-object p0
.end method

.method public static values()[Lcn/smssdk/SMSSDK$InitFlag;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/SMSSDK$InitFlag;->$VALUES:[Lcn/smssdk/SMSSDK$InitFlag;

    invoke-virtual {v0}, [Lcn/smssdk/SMSSDK$InitFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/smssdk/SMSSDK$InitFlag;

    return-object v0
.end method
