.class Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;
.super Ljava/lang/Object;
.source "SearchPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dynamicId:Ljava/lang/String;

.field final synthetic val$finalPos:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$dynamicId:Ljava/lang/String;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$finalPos:I

    iput-object p5, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 484
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$type:Ljava/lang/String;

    const-string v0, "dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$dynamicId:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$finalPos:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$3500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;I)V

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
