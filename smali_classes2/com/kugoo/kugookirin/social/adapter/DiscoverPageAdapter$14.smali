.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;
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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$dynamicID:Ljava/lang/String;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 416
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 417
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$dynamicID:Ljava/lang/String;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;->val$index:I

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$3200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V

    return-void
.end method
