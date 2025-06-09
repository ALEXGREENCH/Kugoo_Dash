.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->showTipOffsDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dynamicID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->val$dynamicID:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 400
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->val$dynamicID:Ljava/lang/String;

    const-string v1, "Spam"

    const-string v2, "1"

    invoke-static {p1, v2, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$3100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
