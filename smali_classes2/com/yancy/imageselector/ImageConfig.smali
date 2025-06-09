.class public Lcom/yancy/imageselector/ImageConfig;
.super Ljava/lang/Object;
.source "ImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yancy/imageselector/ImageConfig$Builder;
    }
.end annotation


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private crop:Z

.field private filePath:Ljava/lang/String;

.field private imageLoader:Lcom/yancy/imageselector/ImageLoader;

.field private maxSize:I

.field private mutiSelect:Z

.field private outputX:I

.field private outputY:I

.field private pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private showCamera:Z

.field private steepToolBarColor:I

.field private titleBgColor:I

.field private titleSubmitTextColor:I

.field private titleTextColor:I


# direct methods
.method private constructor <init>(Lcom/yancy/imageselector/ImageConfig$Builder;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$000(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->maxSize:I

    .line 42
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$100(Lcom/yancy/imageselector/ImageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->showCamera:Z

    .line 43
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$200(Lcom/yancy/imageselector/ImageConfig$Builder;)Lcom/yancy/imageselector/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->imageLoader:Lcom/yancy/imageselector/ImageLoader;

    .line 44
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$300(Lcom/yancy/imageselector/ImageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->mutiSelect:Z

    .line 45
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$400(Lcom/yancy/imageselector/ImageConfig$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->pathList:Ljava/util/ArrayList;

    .line 46
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$500(Lcom/yancy/imageselector/ImageConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->filePath:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$600(Lcom/yancy/imageselector/ImageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->crop:Z

    .line 49
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$700(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->aspectX:I

    .line 50
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$800(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->aspectY:I

    .line 51
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$900(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->outputX:I

    .line 52
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1000(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->outputY:I

    .line 54
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1100(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->requestCode:I

    .line 56
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1200(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleBgColor:I

    .line 57
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1300(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleTextColor:I

    .line 58
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1400(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleSubmitTextColor:I

    .line 59
    invoke-static {p1}, Lcom/yancy/imageselector/ImageConfig$Builder;->access$1500(Lcom/yancy/imageselector/ImageConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/yancy/imageselector/ImageConfig;->steepToolBarColor:I

    .line 61
    iget-object p1, p0, Lcom/yancy/imageselector/ImageConfig;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/yancy/imageselector/utils/FileUtils;->createFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yancy/imageselector/ImageConfig$Builder;Lcom/yancy/imageselector/ImageConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/yancy/imageselector/ImageConfig;-><init>(Lcom/yancy/imageselector/ImageConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getAspectX()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->aspectX:I

    return v0
.end method

.method public getAspectY()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->aspectY:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLoader()Lcom/yancy/imageselector/ImageLoader;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->imageLoader:Lcom/yancy/imageselector/ImageLoader;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->maxSize:I

    return v0
.end method

.method public getOutputX()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->outputX:I

    return v0
.end method

.method public getOutputY()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->outputY:I

    return v0
.end method

.method public getPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/yancy/imageselector/ImageConfig;->pathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->requestCode:I

    return v0
.end method

.method public getSteepToolBarColor()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->steepToolBarColor:I

    return v0
.end method

.method public getTitleBgColor()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleBgColor:I

    return v0
.end method

.method public getTitleSubmitTextColor()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleSubmitTextColor:I

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/yancy/imageselector/ImageConfig;->titleTextColor:I

    return v0
.end method

.method public isCrop()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->crop:Z

    return v0
.end method

.method public isMutiSelect()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->mutiSelect:Z

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig;->showCamera:Z

    return v0
.end method
