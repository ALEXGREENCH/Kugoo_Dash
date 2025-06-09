.class public Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ModifyPersonalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModifyPersonalActivity"


# instance fields
.field private RESULTCODE:I

.field accountInfo:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a003a
    .end annotation
.end field

.field accountInfoTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a003b
    .end annotation
.end field

.field avatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a043c
    .end annotation
.end field

.field biographyTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0439
    .end annotation
.end field

.field birthTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a043f
    .end annotation
.end field

.field private changeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changePwdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countryTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0441
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field genderTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0445
    .end annotation
.end field

.field heightTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0446
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field nameTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0449
    .end annotation
.end field

.field private newBirthday:Ljava/lang/String;

.field private newHeight:Ljava/lang/String;

.field private newWeight:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private pwd:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field weightTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a044b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x3e9

    .line 111
    iput v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->RESULTCODE:I

    const-string v0, "90kg"

    .line 118
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newWeight:Ljava/lang/String;

    const-string v0, "160cm"

    .line 119
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newHeight:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->resetAccountData()V

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->RESULTCODE:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/util/Map;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->postChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newBirthday:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newBirthday:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newWeight:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newWeight:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newHeight:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newHeight:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->postDeleteAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)Ljava/util/Map;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    return-object p0
.end method

.method private changeAvator()V
    .locals 4

    .line 256
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x3f3

    const/16 v2, 0x21

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    if-ge v0, v2, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 260
    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->choosePhoto()V

    goto :goto_0

    :cond_2
    const v0, 0x7f120125

    .line 276
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private changeGender()V
    .locals 3

    .line 373
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d008a

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 376
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->setDialogParams(Landroid/app/Dialog;)V

    const v1, 0x7f0a0447

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$3;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0443

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$4;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0293

    .line 392
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$5;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ca

    .line 399
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$6;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 406
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 407
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private changeWeight(Ljava/lang/String;)V
    .locals 5

    .line 468
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 469
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d008c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 470
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->setDialogParams(Landroid/app/Dialog;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "weight"

    .line 474
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    :goto_0
    const/16 v3, 0x96

    if-gt v2, v3, :cond_1

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "height"

    .line 478
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x50

    :goto_1
    const/16 v3, 0xf0

    if-gt v2, v3, :cond_1

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const v2, 0x7f0a0620

    .line 484
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/view/PickerView;

    .line 485
    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/view/PickerView;->setData(Ljava/util/List;)V

    .line 487
    new-instance v1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$10;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/view/PickerView;->setOnSelectListener(Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;)V

    const v1, 0x7f0a061f

    .line 500
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$11;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a061e

    .line 513
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$12;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 519
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 521
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private choosePhoto()V
    .locals 2

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private deleteDialog()V
    .locals 4

    .line 525
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d008b

    .line 526
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 527
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 531
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 532
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 533
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 534
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v1, 0x7f0a01d0

    .line 536
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1200a5

    .line 537
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01ce

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$13;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ca

    .line 547
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$14;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 553
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 554
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 777
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 779
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v2, "file"

    .line 780
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 781
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "content"

    .line 782
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 784
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "_data"

    if-eqz v1, :cond_4

    .line 785
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ":"

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 787
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v6, "_id=?"

    .line 789
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v7, v1, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v7, p0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 791
    aget-object p0, v2, p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 792
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 793
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 797
    :cond_4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 798
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 799
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 800
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 801
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_5

    .line 803
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_5

    .line 804
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    return-object v0
.end method

.method private initEvent()V
    .locals 5

    const v0, 0x7f0a05a3

    .line 147
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1201d6

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newBirthday:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newBirthday=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->newBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "birthda"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logoutFaceBook()V
    .locals 1

    .line 363
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    :cond_1
    return-void
.end method

.method private logoutGoogle()V
    .locals 2

    .line 351
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v1, "603267565152-9dt5aqmnhispdidq3f42hhmvjebfo3b5.apps.googleusercontent.com"

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 354
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 355
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private postChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    const-string v1, "token"

    .line 660
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    const-string v1, "method"

    const-string v2, "updateUserInfor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeMap:Ljava/util/Map;

    const-string v1, "key"

    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$23;

    const/4 v5, 0x1

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v7, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;

    invoke-direct {v7, p0, p1, p2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$21;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$22;

    invoke-direct {v8, p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$22;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$23;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 712
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postChangePwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    const-string v1, "id"

    .line 609
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    const-string v1, "oldPassword"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    const-string v0, "newPassword"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    const-string v0, "method"

    const-string v1, "modifyPassword"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changePwdMap:Ljava/util/Map;

    const-string v0, "key"

    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$20;

    const/4 v4, 0x1

    sget-object v5, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v6, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$18;

    invoke-direct {v6, p0, p2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$18;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Ljava/lang/String;)V

    new-instance v7, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$19;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$19;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$20;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 643
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postDeleteAccount(Ljava/lang/String;)V
    .locals 7

    .line 564
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 565
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 566
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "delete_user"

    .line 567
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 568
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$17;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$15;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$16;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$16;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$17;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 597
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private resetAccountData()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    const-string v3, "--"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_LEVEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setDialogParams(Landroid/app/Dialog;)V
    .locals 2

    .line 411
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 415
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 416
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x51

    .line 417
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 139
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private userLogout()V
    .locals 4

    .line 291
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d008b

    .line 292
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 293
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 297
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 298
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 299
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 300
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v1, 0x7f0a01ce

    .line 303
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01ca

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$2;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 321
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 815
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 816
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 817
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 820
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 821
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 822
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 826
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v1, v1, 0x140

    .line 827
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v2, v2, 0x1e0

    .line 828
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 829
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 830
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 718
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "path=bitmap != null"

    const/4 v3, -0x1

    const-string v4, "path002"

    const/4 v5, 0x1

    const-string v6, "path="

    if-eq p1, v5, :cond_1

    const/4 v7, 0x2

    if-eq p1, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v3, :cond_3

    .line 751
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 752
    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "path0001"

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "   picSize=="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 758
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->avatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    new-instance p1, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;

    invoke-direct {p1, p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;)V

    new-array p3, v5, [Landroid/graphics/Bitmap;

    aput-object p2, p3, v0

    .line 761
    invoke-virtual {p1, p3}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 764
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_3

    .line 725
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 727
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 729
    invoke-static {p0, p2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 730
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0, p2}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p2, "data"

    .line 733
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p1, :cond_3

    .line 736
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->avatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    new-instance p2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;

    invoke-direct {p2, p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$1;)V

    new-array p3, v5, [Landroid/graphics/Bitmap;

    aput-object p1, p3, v0

    .line 739
    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a043c,
            0x7f0a0448,
            0x7f0a0444,
            0x7f0a043e,
            0x7f0a044a,
            0x7f0a0442,
            0x7f0a043d,
            0x7f0a043a,
            0x7f0a043b,
            0x7f0a0440,
            0x7f0a0175,
            0x7f0a00ec
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 215
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string p1, "weight"

    .line 231
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeWeight(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :sswitch_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeGender()V

    goto :goto_0

    .line 234
    :sswitch_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->userLogout()V

    goto :goto_0

    .line 247
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :sswitch_6
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->showTimePicker()V

    goto :goto_0

    .line 237
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    :sswitch_8
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeAvator()V

    goto :goto_0

    :sswitch_9
    const-string p1, "height"

    .line 244
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->changeWeight(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :sswitch_a
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->deleteDialog()V

    goto :goto_0

    .line 209
    :sswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ec -> :sswitch_b
        0x7f0a0175 -> :sswitch_a
        0x7f0a043b -> :sswitch_9
        0x7f0a043c -> :sswitch_8
        0x7f0a043d -> :sswitch_7
        0x7f0a043e -> :sswitch_6
        0x7f0a0440 -> :sswitch_5
        0x7f0a0442 -> :sswitch_4
        0x7f0a0444 -> :sswitch_3
        0x7f0a0448 -> :sswitch_2
        0x7f0a044a -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003d

    .line 128
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->setContentView(I)V

    .line 129
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 132
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 133
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->initEvent()V

    .line 134
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->showDefaultUi()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 941
    aget v1, p3, v0

    if-nez v1, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->choosePhoto()V

    goto :goto_0

    :cond_0
    const v1, 0x7f1201ce

    .line 946
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 949
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 163
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->token:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token0005"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->id:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->nameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    const-string v4, "--"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->birthTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->weightTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->heightTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->countryTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    .line 175
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->accountInfoTitle:Landroid/widget/TextView;

    const v1, 0x7f12013a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->accountInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->accountInfoTitle:Landroid/widget/TextView;

    const v1, 0x7f120390

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->accountInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->biographyTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    const-string v3, "3"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    const v1, 0x7f1201d5

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const-string v1, "2"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    const v1, 0x7f1201d0

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v1, "1"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->genderTv:Landroid/widget/TextView;

    const v1, 0x7f1201d3

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u4e0a\u4fdd\u5b58onResume==    url=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testAllMsg"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->avatarIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    :cond_5
    return-void
.end method

.method public showTimePicker()V
    .locals 4

    .line 426
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 427
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 430
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;->setDialogParams(Landroid/app/Dialog;)V

    const v1, 0x7f0a016e

    .line 433
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 436
    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$7;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$7;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    const v1, 0x7f0a0454

    .line 445
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$8;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0455

    .line 452
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/ModifyPersonalActivity$9;-><init>(Lcom/kugoo/kugookirin/user/ModifyPersonalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 463
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
