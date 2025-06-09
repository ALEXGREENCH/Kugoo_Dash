.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;
.super Ljava/lang/Object;
.source "ForYouAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showTipOffsDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 702
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;->val$dialog:Landroid/app/Dialog;

    const v0, 0x7f0a01d1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;->val$dialog:Landroid/app/Dialog;

    const v0, 0x7f0a01cf

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
