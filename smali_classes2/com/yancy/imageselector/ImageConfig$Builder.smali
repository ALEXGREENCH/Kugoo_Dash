.class public Lcom/yancy/imageselector/ImageConfig$Builder;
.super Ljava/lang/Object;
.source "ImageConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yancy/imageselector/ImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>(Lcom/yancy/imageselector/ImageLoader;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->mutiSelect:Z

    const/16 v1, 0x9

    .line 66
    iput v1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->maxSize:I

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->showCamera:Z

    .line 69
    iput-boolean v1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->crop:Z

    .line 70
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectX:I

    .line 71
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectY:I

    const/16 v0, 0x1f4

    .line 72
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputX:I

    .line 73
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputY:I

    const/16 v0, 0x3ea

    .line 74
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->requestCode:I

    const-string v0, "/temp/pictures"

    .line 78
    iput-object v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->filePath:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 80
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleBgColor:I

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleTextColor:I

    .line 82
    iput v1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleSubmitTextColor:I

    .line 84
    iput v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->steepToolBarColor:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->pathList:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->imageLoader:Lcom/yancy/imageselector/ImageLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->maxSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/yancy/imageselector/ImageConfig$Builder;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->showCamera:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputY:I

    return p0
.end method

.method static synthetic access$1100(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->requestCode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleBgColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleTextColor:I

    return p0
.end method

.method static synthetic access$1400(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleSubmitTextColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->steepToolBarColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/yancy/imageselector/ImageConfig$Builder;)Lcom/yancy/imageselector/ImageLoader;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->imageLoader:Lcom/yancy/imageselector/ImageLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yancy/imageselector/ImageConfig$Builder;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->mutiSelect:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yancy/imageselector/ImageConfig$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->pathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yancy/imageselector/ImageConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yancy/imageselector/ImageConfig$Builder;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->crop:Z

    return p0
.end method

.method static synthetic access$700(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectX:I

    return p0
.end method

.method static synthetic access$800(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectY:I

    return p0
.end method

.method static synthetic access$900(Lcom/yancy/imageselector/ImageConfig$Builder;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputX:I

    return p0
.end method


# virtual methods
.method public build()Lcom/yancy/imageselector/ImageConfig;
    .locals 2

    .line 166
    new-instance v0, Lcom/yancy/imageselector/ImageConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yancy/imageselector/ImageConfig;-><init>(Lcom/yancy/imageselector/ImageConfig$Builder;Lcom/yancy/imageselector/ImageConfig$1;)V

    return-object v0
.end method

.method public crop()Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->crop:Z

    return-object p0
.end method

.method public crop(IIII)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->crop:Z

    .line 105
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectX:I

    .line 106
    iput p2, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->aspectY:I

    .line 107
    iput p3, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputX:I

    .line 108
    iput p4, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->outputY:I

    return-object p0
.end method

.method public filePath(Ljava/lang/String;)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public mutiSelect()Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->mutiSelect:Z

    return-object p0
.end method

.method public mutiSelectMaxSize(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 154
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->maxSize:I

    return-object p0
.end method

.method public pathList(Ljava/util/ArrayList;)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yancy/imageselector/ImageConfig$Builder;"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->pathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public requestCode(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 113
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->requestCode:I

    return-object p0
.end method

.method public showCamera()Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->showCamera:Z

    return-object p0
.end method

.method public singleSelect()Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->mutiSelect:Z

    return-object p0
.end method

.method public steepToolBarColor(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 144
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->steepToolBarColor:I

    return-object p0
.end method

.method public titleBgColor(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 129
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleBgColor:I

    return-object p0
.end method

.method public titleSubmitTextColor(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 139
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleSubmitTextColor:I

    return-object p0
.end method

.method public titleTextColor(I)Lcom/yancy/imageselector/ImageConfig$Builder;
    .locals 0

    .line 134
    iput p1, p0, Lcom/yancy/imageselector/ImageConfig$Builder;->titleTextColor:I

    return-object p0
.end method
