.class public Lcn/smssdk/ui/AlertPage;
.super Lcom/mob/tools/FakeActivity;
.source "AlertPage.java"


# static fields
.field private static instance:Lcn/smssdk/ui/AlertPage;


# instance fields
.field private cancelActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private okActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private res:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 2
    sput-object p0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/ui/AlertPage;->okActions:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/ui/AlertPage;->cancelActions:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/smssdk/ui/AlertPage;->res:Ljava/util/HashMap;

    .line 6
    iget-object v1, p0, Lcn/smssdk/ui/AlertPage;->okActions:Ljava/util/ArrayList;

    const-string v2, "okActions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcn/smssdk/ui/AlertPage;->res:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/smssdk/ui/AlertPage;->cancelActions:Ljava/util/ArrayList;

    const-string v2, "cancelActions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcn/smssdk/ui/AlertPage;->res:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setResult(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/ui/AlertPage;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/ui/AlertPage;->res:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Lcn/smssdk/ui/AlertPage;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    return-object v0
.end method

.method private createPage()Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static isShow()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    iget-object v0, v0, Lcn/smssdk/ui/AlertPage;->okActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object p0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    iget-object p0, p0, Lcn/smssdk/ui/AlertPage;->cancelActions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    iput-object p0, v0, Lcn/smssdk/ui/AlertPage;->msg:Ljava/lang/String;

    return-void
.end method

.method private showDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcn/smssdk/entity/UiSettings$Builder;

    invoke-direct {v0}, Lcn/smssdk/entity/UiSettings$Builder;-><init>()V

    iget-object v1, p0, Lcn/smssdk/ui/AlertPage;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/smssdk/entity/UiSettings$Builder;->setMsgText(Ljava/lang/String;)Lcn/smssdk/entity/UiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/entity/UiSettings$Builder;->build()Lcn/smssdk/entity/UiSettings;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/smssdk/ui/a;

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcn/smssdk/ui/AlertPage$a;

    invoke-direct {v3, p0}, Lcn/smssdk/ui/AlertPage$a;-><init>(Lcn/smssdk/ui/AlertPage;)V

    invoke-direct {v1, v2, v0, v3}, Lcn/smssdk/ui/a;-><init>(Landroid/content/Context;Lcn/smssdk/entity/UiSettings;Lcn/smssdk/OnDialogListener;)V

    .line 15
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_DialogStyle"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const v1, 0x103000b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/smssdk/ui/AlertPage;->createPage()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-direct {p0}, Lcn/smssdk/ui/AlertPage;->showDialog()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcn/smssdk/ui/AlertPage;->instance:Lcn/smssdk/ui/AlertPage;

    .line 2
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    return-void
.end method
