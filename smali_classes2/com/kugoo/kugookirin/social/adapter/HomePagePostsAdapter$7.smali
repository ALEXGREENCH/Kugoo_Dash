.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;
.super Ljava/lang/Object;
.source "HomePagePostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dynamicId:Ljava/lang/String;

.field final synthetic val$finalPos:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$dynamicId:Ljava/lang/String;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$finalPos:I

    iput-object p5, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 339
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$type:Ljava/lang/String;

    const-string v0, "dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$dynamicId:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$finalPos:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2700(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;I)V

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
