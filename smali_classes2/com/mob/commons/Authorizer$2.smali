.class Lcom/mob/commons/Authorizer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/MobProduct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->a(Ljava/util/HashMap;Lcom/mob/commons/MobProduct;Lcom/mob/tools/utils/DH$DHResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/commons/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/mob/commons/Authorizer$2;->this$0:Lcom/mob/commons/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "006Gcbeffafaefce"

    .line 252
    invoke-static {v0}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    .line 256
    sget v0, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    return v0
.end method
