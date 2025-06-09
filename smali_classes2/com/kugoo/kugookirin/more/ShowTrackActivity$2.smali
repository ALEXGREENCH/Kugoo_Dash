.class Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;
.super Ljava/lang/Object;
.source "ShowTrackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ShowTrackActivity;->showShareBar(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

.field final synthetic val$barDialog:Landroid/app/Dialog;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;Ljava/io/File;Landroid/app/Dialog;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->val$barDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/utils/ScreenShot;->shareImge02(Landroid/app/Activity;Ljava/io/File;)V

    .line 474
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$2;->val$barDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
