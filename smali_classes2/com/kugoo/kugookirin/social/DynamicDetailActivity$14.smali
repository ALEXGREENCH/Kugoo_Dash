.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 479
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->val$type:Ljava/lang/String;

    const-string v0, "dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 480
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->FOR_YOU_FRAGMENT:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 481
    sput-boolean v0, Lcom/kugoo/kugookirin/social/ForYouFragment;->isDeleteItem:Z

    goto :goto_0

    .line 482
    :cond_0
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_POPULAR:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 483
    sput-boolean v0, Lcom/kugoo/kugookirin/social/PopularFragment;->isDeleteItem:Z

    goto :goto_0

    .line 484
    :cond_1
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_RECOGNITION:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 485
    sput-boolean v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;->isDeleteItem:Z

    goto :goto_0

    .line 486
    :cond_2
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->HOMEPAGE_ACTIVITY:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1200(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 487
    sput-boolean v0, Lcom/kugoo/kugookirin/social/HomePageActivity;->isDeleteItem:Z

    .line 490
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$400(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->access$1300(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Ljava/lang/String;)V

    .line 492
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
