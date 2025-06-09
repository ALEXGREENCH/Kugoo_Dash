.class Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "AvatarPickerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/AvatarPickerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridAdapter"
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field final synthetic this$0:Lcn/smssdk/gui/AvatarPickerPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/AvatarPickerPage;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->this$0:Lcn/smssdk/gui/AvatarPickerPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    sget-object p1, Lcn/smssdk/gui/util/Const;->AVATOR_ARR:[Ljava/lang/String;

    iput-object p1, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->data:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->data:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->data:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->this$0:Lcn/smssdk/gui/AvatarPickerPage;

    invoke-static {p2}, Lcn/smssdk/gui/AvatarPickerPage;->access$000(Lcn/smssdk/gui/AvatarPickerPage;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->this$0:Lcn/smssdk/gui/AvatarPickerPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_avatar_picker_item"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    :cond_0
    iget-object p3, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->this$0:Lcn/smssdk/gui/AvatarPickerPage;

    invoke-virtual {p3}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 108
    iget-object v0, p0, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->this$0:Lcn/smssdk/gui/AvatarPickerPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/AvatarPickerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_avator_item"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/AsyncImageView;

    const/16 v1, 0x20

    .line 109
    invoke-static {p3, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(F)V

    .line 110
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/AvatarPickerPage$GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "smssdk_cp_default_avatar"

    .line 111
    invoke-static {p3, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    return-object p2
.end method
