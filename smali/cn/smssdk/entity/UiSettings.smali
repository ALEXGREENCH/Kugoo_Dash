.class public Lcn/smssdk/entity/UiSettings;
.super Lcn/smssdk/entity/BaseEntity;
.source "UiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/entity/UiSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TITLE_TEXT_COLOR_ID:I

.field public static final DEFAULT_TITLE_TEXT_ID:I

.field public static final DEFAULT_TITLE_TEXT_SIZE_DP:I


# instance fields
.field private backgroundImgId:I

.field private logoHeight:I

.field private logoImgId:I

.field private logoWidth:I

.field private msgText:Ljava/lang/String;

.field private positiveBtnHeight:I

.field private positiveBtnImgId:I

.field private positiveBtnTextColorId:I

.field private positiveBtnTextId:I

.field private positiveBtnTextSize:I

.field private positiveBtnWidth:I

.field private titleTextColorId:I

.field private titleTextId:I

.field private titleTextSizeDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_common_black"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_COLOR_ID:I

    const-string/jumbo v0, "smssdk_authorize_text_size_l"

    .line 2
    invoke-static {v0}, Lcn/smssdk/utils/SmsResHelper;->getDimenRes(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/smssdk/utils/SmsResHelper;->getDimenDpSize(I)I

    move-result v0

    sput v0, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_SIZE_DP:I

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_authorize_dialog_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_ID:I

    return-void
.end method

.method private constructor <init>(Lcn/smssdk/entity/UiSettings$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcn/smssdk/entity/BaseEntity;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$000(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextId:I

    .line 4
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$100(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextColorId:I

    .line 5
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$200(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextSizeDp:I

    .line 6
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$300(Lcn/smssdk/entity/UiSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/entity/UiSettings;->msgText:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$400(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->logoImgId:I

    .line 8
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$500(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnImgId:I

    .line 9
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$600(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextId:I

    .line 10
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$700(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextColorId:I

    .line 11
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$800(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->backgroundImgId:I

    .line 12
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$900(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->logoWidth:I

    .line 13
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$1000(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->logoHeight:I

    .line 14
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$1100(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextSize:I

    .line 15
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$1200(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnWidth:I

    .line 16
    invoke-static {p1}, Lcn/smssdk/entity/UiSettings$Builder;->access$1300(Lcn/smssdk/entity/UiSettings$Builder;)I

    move-result p1

    iput p1, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/smssdk/entity/UiSettings$Builder;Lcn/smssdk/entity/UiSettings$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/smssdk/entity/UiSettings;-><init>(Lcn/smssdk/entity/UiSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getBackgroundImgId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->backgroundImgId:I

    return v0
.end method

.method public getLogoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->logoHeight:I

    return v0
.end method

.method public getLogoImgId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->logoImgId:I

    return v0
.end method

.method public getLogoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->logoWidth:I

    return v0
.end method

.method public getMsgText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/entity/UiSettings;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveBtnHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnHeight:I

    return v0
.end method

.method public getPositiveBtnImgId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnImgId:I

    return v0
.end method

.method public getPositiveBtnTextColorId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextColorId:I

    return v0
.end method

.method public getPositiveBtnTextId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextId:I

    return v0
.end method

.method public getPositiveBtnTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnTextSize:I

    return v0
.end method

.method public getPositiveBtnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->positiveBtnWidth:I

    return v0
.end method

.method public getTitleTextColorId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextColorId:I

    return v0
.end method

.method public getTitleTextId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextId:I

    return v0
.end method

.method public getTitleTextSizeDp()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/smssdk/entity/UiSettings;->titleTextSizeDp:I

    return v0
.end method
