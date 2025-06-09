.class public final enum Lcom/lidong/photopicker/SelectModel;
.super Ljava/lang/Enum;
.source "SelectModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidong/photopicker/SelectModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lidong/photopicker/SelectModel;

.field public static final enum MULTI:Lcom/lidong/photopicker/SelectModel;

.field public static final enum SINGLE:Lcom/lidong/photopicker/SelectModel;


# instance fields
.field private model:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/lidong/photopicker/SelectModel;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/lidong/photopicker/SelectModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidong/photopicker/SelectModel;->SINGLE:Lcom/lidong/photopicker/SelectModel;

    .line 6
    new-instance v1, Lcom/lidong/photopicker/SelectModel;

    const-string v3, "MULTI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/lidong/photopicker/SelectModel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/lidong/photopicker/SelectModel;->MULTI:Lcom/lidong/photopicker/SelectModel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/lidong/photopicker/SelectModel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 4
    sput-object v3, Lcom/lidong/photopicker/SelectModel;->$VALUES:[Lcom/lidong/photopicker/SelectModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/lidong/photopicker/SelectModel;->model:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidong/photopicker/SelectModel;
    .locals 1

    .line 4
    const-class v0, Lcom/lidong/photopicker/SelectModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidong/photopicker/SelectModel;

    return-object p0
.end method

.method public static values()[Lcom/lidong/photopicker/SelectModel;
    .locals 1

    .line 4
    sget-object v0, Lcom/lidong/photopicker/SelectModel;->$VALUES:[Lcom/lidong/photopicker/SelectModel;

    invoke-virtual {v0}, [Lcom/lidong/photopicker/SelectModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lidong/photopicker/SelectModel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 16
    iget v0, p0, Lcom/lidong/photopicker/SelectModel;->model:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
