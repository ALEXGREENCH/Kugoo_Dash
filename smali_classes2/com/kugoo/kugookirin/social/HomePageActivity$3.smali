.class Lcom/kugoo/kugookirin/social/HomePageActivity$3;
.super Landroid/os/Handler;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/os/Looper;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 408
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 409
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$100(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 411
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4ce

    if-ne p1, v0, :cond_6

    .line 412
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFlag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 413
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getIfFollow()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    const v3, 0x7f12010c

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getIfFollow()Ljava/lang/String;

    move-result-object p1

    const-string v2, "N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    const v3, 0x7f12010a

    invoke-virtual {v2, v3}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 427
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object v3, v3, Lcom/kugoo/kugookirin/social/HomePageActivity;->avatarPhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 428
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 427
    invoke-virtual {p1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 430
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->avatarPhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFlagUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 433
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageFlag:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFlagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object v1, v1, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageFlag:Landroid/widget/ImageView;

    .line 435
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 434
    invoke-virtual {p1, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 437
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageFlag:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :goto_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageCountry:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followerTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFollowers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/HomePageActivity;->followingTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;->this$0:Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/UserPageInfo;->getFriends()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method
