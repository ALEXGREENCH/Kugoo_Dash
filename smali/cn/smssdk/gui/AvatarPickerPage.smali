.class public Lcn/smssdk/gui/AvatarPickerPage;
.super Lcom/mob/tools/FakeActivity;
.source "AvatarPickerPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;
    }
.end annotation


# static fields
.field public static final INTENT_PICK_URL:Ljava/lang/String; = "INTENT_PICK_URL"


# instance fields
.field private adapter:Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/AvatarPickerPage;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/AvatarPickerPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_left"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPickerPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_cancel"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPickerPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_pick_avatar"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_right"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPickerPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gv_avator"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/AvatarPickerPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 68
    new-instance v1, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;-><init>(Lcn/smssdk/gui/AvatarPickerPage;)V

    iput-object v1, p0, Lcn/smssdk/gui/AvatarPickerPage;->adapter:Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 119
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_left"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 40
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPickerPage;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_avatar_picker_page"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcn/smssdk/gui/AvatarPickerPage;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lcn/smssdk/gui/AvatarPickerPage;->adapter:Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;

    invoke-virtual {p1, p3}, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "INTENT_PICK_URL"

    .line 77
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p2}, Lcn/smssdk/gui/AvatarPickerPage;->setResult(Ljava/util/HashMap;)V

    .line 79
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->sendResult()V

    .line 80
    invoke-virtual {p0}, Lcn/smssdk/gui/AvatarPickerPage;->finish()V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mob/tools/MobUIShell;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/AvatarPickerPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
