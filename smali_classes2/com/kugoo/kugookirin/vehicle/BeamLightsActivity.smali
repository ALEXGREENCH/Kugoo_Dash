.class public Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BeamLightsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private D:Z

.field private TAG:Ljava/lang/String;

.field private atan:D

.field private b:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private brightness:I

.field private color_b:Ljava/lang/String;

.field private color_g:Ljava/lang/String;

.field private color_liangdu:Ljava/lang/String;

.field private color_r:Ljava/lang/String;

.field private color_rgb:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private eventX:F

.field private eventY:F

.field private ex:F

.field private ey:F

.field private g:I

.field public h_color:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0313
    .end annotation
.end field

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private isClick:Z

.field private jiaodu:F

.field private lightMode:Ljava/lang/String;

.field public lightModeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0319
    .end annotation
.end field

.field private lightOn:Z

.field private lightOnType:Ljava/lang/String;

.field private lightTime:Ljava/lang/String;

.field private lightTopStr:Ljava/lang/String;

.field public light_pin:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0315
    .end annotation
.end field

.field lightsOnIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031a
    .end annotation
.end field

.field lightsSolid:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031c
    .end annotation
.end field

.field public llSolidSelect:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a033f
    .end annotation
.end field

.field private mImage_bgHeight:I

.field private mImage_bgWidth:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSeekBar_bright:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0316
    .end annotation
.end field

.field private mTimerHandler:Landroid/os/Handler;

.field private modeOn:Ljava/lang/String;

.field private modeRandom:Ljava/lang/String;

.field private modeSolid:Ljava/lang/String;

.field private modeStealth:Ljava/lang/String;

.field private pixel:I

.field private preferences:Landroid/content/SharedPreferences;

.field private r:I

.field private sendData:Ljava/lang/String;

.field private v1:F

.field private x_x:F

.field private x_y:F

.field private yuan_x:F

.field private yuan_y:F

.field private yx:F

.field private yy:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "LightsActivity"

    .line 47
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    const-string v0, "LGHT+"

    .line 62
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    const-string v0, "A4"

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    const-string v0, "A0"

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeRandom:Ljava/lang/String;

    const-string v0, "A6"

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeStealth:Ljava/lang/String;

    const-string v0, "05"

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    .line 247
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$4;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->checkLightOn(Ljava/lang/String;)V

    return-void
.end method

.method private checkLightOn(Ljava/lang/String;)V
    .locals 3

    .line 287
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "gbk"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4

    const/4 v0, 0x5

    .line 292
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOnType:Ljava/lang/String;

    .line 293
    iget-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    if-nez v1, :cond_4

    const-string v1, "AE"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    .line 296
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsOnIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    .line 299
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsOnIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 300
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOnType:Ljava/lang/String;

    const-string v1, "A4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f12031f

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOnType:Ljava/lang/String;

    const-string v1, "A0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f1201ea

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOnType:Ljava/lang/String;

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f120338

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "light_on"

    iget-boolean v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  code_ok=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lightOnType=="

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private getBgXY()V
    .locals 5

    const/4 v0, 0x0

    .line 445
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 446
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 447
    iget-boolean v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "view_width="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "view_height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 449
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mImage_bgHeight:I

    .line 450
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mImage_bgWidth:I

    .line 451
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_x:F

    .line 452
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mImage_bgHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_y:F

    .line 453
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yuan_x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yuan_y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 95
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mTimerHandler:Landroid/os/Handler;

    const v0, 0x7f0a05a3

    .line 98
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120135

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mSeekBar_bright:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "lightType"

    const-string v2, "Solid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "light_on"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "color_jiaodu"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->jiaodu:F

    .line 104
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    const/16 v3, 0xff

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->brightness:I

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsOnIv:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mSeekBar_bright:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->brightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f12031f

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    const-string v1, "Random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f1201ea

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    const-string v1, "Stealth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f120338

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_2
    :goto_0
    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->jiaodu:F

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setRotationValue(F)V

    .line 115
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getBgXY()V

    .line 116
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private sendString(Ljava/lang/String;)V
    .locals 3

    .line 203
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLightColorBtn(Ljava/lang/String;F)V
    .locals 2

    .line 214
    invoke-direct {p0, p2}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setRotationValue(F)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f12031f

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "light_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "color_jiaodu"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "lightType"

    const-string v0, "Solid"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "lightMode"

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRotationValue(F)V
    .locals 3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "value=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->light_pin:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "rotation"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 88
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showSelectView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->llSolidSelect:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "Solid"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f12031f

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "Random"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f1201ea

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "Stealth"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v1, 0x7f120338

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "light_color"

    const-string v2, "FF0000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    .line 237
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lightMode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "lightType"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 73
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 75
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->init()V

    .line 76
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->showDefaultUi()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 437
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0313

    const/4 v3, 0x1

    if-ne v1, v2, :cond_14

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-string v2, " yx=="

    const-string v6, " ex=="

    const-string v7, " yy=="

    const-string v8, " ey=="

    const-string v9, "v1=="

    const-wide v10, 0x4056800000000000L    # 90.0

    const-string v12, "eventY="

    const-string v13, "eventX="

    const-wide/16 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    const-wide v18, 0x4066800000000000L    # 180.0

    if-eq v1, v3, :cond_7

    if-eq v1, v5, :cond_0

    goto/16 :goto_6

    .line 328
    :cond_0
    iput-wide v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    .line 329
    iput v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventY:F

    .line 332
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    .line 333
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    .line 334
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    .line 335
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    .line 336
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    .line 337
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    .line 338
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_2

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v12, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpl-float v5, v5, v12

    if-ltz v5, :cond_2

    .line 340
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    div-float/2addr v1, v4

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v4, v1

    .line 341
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    div-double v4, v4, v16

    iput-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_0

    :cond_2
    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    .line 342
    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v12, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_3

    .line 343
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    div-float/2addr v1, v4

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v4, v1

    .line 344
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    div-double v4, v4, v16

    add-double/2addr v4, v10

    iput-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_0

    :cond_3
    cmpl-float v5, v1, v4

    if-lez v5, :cond_4

    .line 345
    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_4

    .line 346
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    div-float/2addr v1, v4

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v4, v1

    .line 347
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    div-double v4, v4, v16

    add-double v4, v4, v18

    iput-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_0

    :cond_4
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    .line 348
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    .line 349
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    div-float/2addr v1, v4

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v4, v1

    .line 350
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    div-double v4, v4, v16

    const-wide v10, 0x4070e00000000000L    # 270.0

    add-double/2addr v4, v10

    iput-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    .line 352
    :cond_5
    :goto_0
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v1, :cond_6

    .line 353
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " atan111=="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_6
    iget-wide v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setRotationValue(F)V

    goto/16 :goto_6

    .line 358
    :cond_7
    iput-wide v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    .line 359
    iput v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventY:F

    .line 362
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    .line 363
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    .line 364
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    .line 365
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yuan_y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    .line 366
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    sub-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    .line 367
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    iget v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    sub-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    .line 369
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventY:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_8
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    iget v12, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    cmpg-float v13, v1, v12

    if-gtz v13, :cond_9

    iget v13, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_9

    .line 371
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    div-float/2addr v1, v10

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v10, v1

    .line 372
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    div-double v10, v10, v16

    iput-wide v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_1

    :cond_9
    cmpl-float v13, v1, v12

    if-lez v13, :cond_a

    .line 373
    iget v13, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v14, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 374
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    iget v12, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    div-float/2addr v1, v12

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v12, v1

    .line 375
    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    mul-double v12, v12, v18

    div-double v12, v12, v16

    add-double/2addr v12, v10

    iput-wide v12, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_1

    :cond_a
    cmpl-float v10, v1, v12

    if-lez v10, :cond_b

    .line 376
    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v11, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_b

    .line 377
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    div-float/2addr v1, v10

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v10, v1

    .line 378
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    div-double v10, v10, v16

    add-double v10, v10, v18

    iput-wide v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    goto :goto_1

    :cond_b
    cmpg-float v1, v1, v12

    if-gtz v1, :cond_c

    .line 379
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_c

    .line 380
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_y:F

    iget v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->x_x:F

    div-float/2addr v1, v10

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    float-to-double v10, v1

    .line 381
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    div-double v10, v10, v16

    const-wide v12, 0x4070e00000000000L    # 270.0

    add-double/2addr v10, v12

    iput-wide v10, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    .line 383
    :cond_c
    :goto_1
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v1, :cond_d

    .line 384
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->v1:F

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ey:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yy:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->ex:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->yx:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " atan=="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_d
    iget-wide v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setRotationValue(F)V

    .line 386
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 387
    iget v2, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventX:F

    iget v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mImage_bgWidth:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_14

    cmpl-float v6, v2, v4

    if-lez v6, :cond_14

    iget v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->eventY:F

    iget v7, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mImage_bgHeight:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_14

    cmpl-float v4, v6, v4

    if-lez v4, :cond_14

    float-to-int v2, v2

    float-to-int v4, v6

    .line 388
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->pixel:I

    .line 389
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->r:I

    .line 390
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->pixel:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->g:I

    .line 391
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->pixel:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    iput v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->b:I

    .line 392
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->D:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pixel="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->pixel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->r:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->g:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_e
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_r:Ljava/lang/String;

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0"

    if-ge v1, v5, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_r:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_f
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_r:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_r:Ljava/lang/String;

    .line 395
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_g:Ljava/lang/String;

    .line 396
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_g:Ljava/lang/String;

    :goto_3
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_g:Ljava/lang/String;

    .line 397
    iget v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_b:Ljava/lang/String;

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_11
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_b:Ljava/lang/String;

    :goto_4
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_b:Ljava/lang/String;

    .line 400
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "brightness"

    const/16 v6, 0xff

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_liangdu:Ljava/lang/String;

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_liangdu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_12
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_liangdu:Ljava/lang/String;

    :goto_5
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_liangdu:Ljava/lang/String;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    const-string v2, "000000"

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "light_color"

    if-eqz v1, :cond_13

    .line 404
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "FF0000"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    .line 406
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    .line 407
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const v4, 0x7f12031f

    invoke-virtual {v0, v4}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-boolean v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    if-eqz v1, :cond_14

    .line 409
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "lightMode"

    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "lightType"

    const-string v4, "Solid"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-wide v4, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->atan:D

    double-to-float v2, v4

    const-string v4, "color_jiaodu"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 413
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendString(Ljava/lang/String;)V

    :cond_14
    :goto_6
    return v3
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0318,
            0x7f0a05a2,
            0x7f0a0314,
            0x7f0a031c,
            0x7f0a031b,
            0x7f0a031d,
            0x7f0a031a,
            0x7f0a02a5,
            0x7f0a02a6,
            0x7f0a02a7,
            0x7f0a02a8
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0314

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a0318

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_4

    const-string v0, "FF0000"

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v2, "Stealth"

    const-string v3, "Random"

    const-string v4, "Solid"

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 150
    :pswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeStealth:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->showSelectView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->showSelectView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    :pswitch_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeRandom:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->showSelectView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 153
    :pswitch_3
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "light_color"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "lightType"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeSolid:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeOn:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeRandom:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeOn:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeStealth:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeOn:Ljava/lang/String;

    .line 163
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightOn:Z

    if-eqz p1, :cond_3

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "AE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTopStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->modeOn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->color_rgb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    .line 173
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendData:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->sendString(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 194
    :pswitch_4
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    const-string p1, "FFFF00"

    const/high16 v0, 0x43960000    # 300.0f

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setLightColorBtn(Ljava/lang/String;F)V

    goto :goto_2

    .line 182
    :pswitch_5
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    const/4 p1, 0x0

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setLightColorBtn(Ljava/lang/String;F)V

    goto :goto_2

    .line 186
    :pswitch_6
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    const-string p1, "00FF00"

    const/high16 v0, 0x436b0000    # 235.0f

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setLightColorBtn(Ljava/lang/String;F)V

    goto :goto_2

    .line 190
    :pswitch_7
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->isClick:Z

    const-string p1, "0000FF"

    const/high16 v0, 0x42f00000    # 120.0f

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->setLightColorBtn(Ljava/lang/String;F)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->finish()V

    goto :goto_2

    .line 136
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->llSolidSelect:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 133
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->llSolidSelect:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a02a5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a031a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
