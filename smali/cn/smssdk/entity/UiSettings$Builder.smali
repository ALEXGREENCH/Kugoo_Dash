.class public Lcn/smssdk/entity/UiSettings$Builder;
.super Lcn/smssdk/entity/BaseEntity;
.source "UiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/entity/UiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/smssdk/entity/BaseEntity;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextId:I

    const v1, -0xccf0cd

    .line 5
    iput v1, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextColorId:I

    .line 7
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextSizeDp:I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcn/smssdk/entity/UiSettings$Builder;->msgText:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->backgroundImgId:I

    .line 12
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoImgId:I

    .line 13
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoWidth:I

    .line 14
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoHeight:I

    .line 16
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnImgId:I

    .line 17
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextId:I

    .line 18
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextColorId:I

    .line 19
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextSize:I

    .line 20
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnWidth:I

    .line 21
    iput v0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnHeight:I

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextId:I

    return p0
.end method

.method static synthetic access$100(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextColorId:I

    return p0
.end method

.method static synthetic access$1000(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextSize:I

    return p0
.end method

.method static synthetic access$1200(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnWidth:I

    return p0
.end method

.method static synthetic access$1300(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnHeight:I

    return p0
.end method

.method static synthetic access$200(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextSizeDp:I

    return p0
.end method

.method static synthetic access$300(Lcn/smssdk/entity/UiSettings$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->msgText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoImgId:I

    return p0
.end method

.method static synthetic access$500(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnImgId:I

    return p0
.end method

.method static synthetic access$600(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextId:I

    return p0
.end method

.method static synthetic access$700(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextColorId:I

    return p0
.end method

.method static synthetic access$800(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->backgroundImgId:I

    return p0
.end method

.method static synthetic access$900(Lcn/smssdk/entity/UiSettings$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoWidth:I

    return p0
.end method


# virtual methods
.method public build()Lcn/smssdk/entity/UiSettings;
    .locals 2

    .line 1
    new-instance v0, Lcn/smssdk/entity/UiSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/smssdk/entity/UiSettings;-><init>(Lcn/smssdk/entity/UiSettings$Builder;Lcn/smssdk/entity/UiSettings$a;)V

    return-object v0
.end method

.method public buildDefault()Lcn/smssdk/entity/UiSettings;
    .locals 3

    .line 1
    new-instance v0, Lcn/smssdk/entity/UiSettings$Builder;

    invoke-direct {v0}, Lcn/smssdk/entity/UiSettings$Builder;-><init>()V

    sget v1, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_ID:I

    .line 2
    invoke-virtual {v0, v1}, Lcn/smssdk/entity/UiSettings$Builder;->setTitleTextId(I)Lcn/smssdk/entity/UiSettings$Builder;

    move-result-object v0

    sget v1, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_COLOR_ID:I

    .line 3
    invoke-virtual {v0, v1}, Lcn/smssdk/entity/UiSettings$Builder;->setTitleTextColorId(I)Lcn/smssdk/entity/UiSettings$Builder;

    move-result-object v0

    sget v1, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_SIZE_DP:I

    .line 4
    invoke-virtual {v0, v1}, Lcn/smssdk/entity/UiSettings$Builder;->setTitleTextSizeDp(I)Lcn/smssdk/entity/UiSettings$Builder;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/smssdk/entity/UiSettings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcn/smssdk/entity/UiSettings;-><init>(Lcn/smssdk/entity/UiSettings$Builder;Lcn/smssdk/entity/UiSettings$a;)V

    return-object v1
.end method

.method public setBackgroundImgId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->backgroundImgId:I

    return-object p0
.end method

.method public setLogoHeight(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoHeight:I

    return-object p0
.end method

.method public setLogoImgId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoImgId:I

    return-object p0
.end method

.method public setLogoWidth(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->logoWidth:I

    return-object p0
.end method

.method public setMsgText(Ljava/lang/String;)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->msgText:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveBtnHeight(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnHeight:I

    return-object p0
.end method

.method public setPositiveBtnImgId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnImgId:I

    return-object p0
.end method

.method public setPositiveBtnTextColorId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextColorId:I

    return-object p0
.end method

.method public setPositiveBtnTextId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextId:I

    return-object p0
.end method

.method public setPositiveBtnTextSize(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnTextSize:I

    return-object p0
.end method

.method public setPositiveBtnWidth(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->positiveBtnWidth:I

    return-object p0
.end method

.method public setTitleTextColorId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextColorId:I

    return-object p0
.end method

.method public setTitleTextId(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextId:I

    return-object p0
.end method

.method public setTitleTextSizeDp(I)Lcn/smssdk/entity/UiSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcn/smssdk/entity/UiSettings$Builder;->titleTextSizeDp:I

    return-object p0
.end method
