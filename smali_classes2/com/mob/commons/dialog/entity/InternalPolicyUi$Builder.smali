.class public Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
.super Lcom/mob/commons/dialog/entity/BaseEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/dialog/entity/InternalPolicyUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentText:Ljava/lang/String;

.field private negativeBtnText:Ljava/lang/String;

.field private positiveBtnText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mob/commons/dialog/entity/BaseEntity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->contentText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->positiveBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->negativeBtnText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mob/commons/dialog/entity/InternalPolicyUi;
    .locals 2

    .line 41
    new-instance v0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi;-><init>(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;Lcom/mob/commons/dialog/entity/InternalPolicyUi$1;)V

    return-object v0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->contentText:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeBtnText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->negativeBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveBtnText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->positiveBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->titleText:Ljava/lang/String;

    return-object p0
.end method
