.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;
.super Ljava/lang/Object;
.source "HomePagePostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->showTipOffsDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dynamicID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->val$dynamicID:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 372
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->val$dynamicID:Ljava/lang/String;

    const-string v1, "Inappropriate"

    const-string v2, "1"

    invoke-static {p1, v2, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2800(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
