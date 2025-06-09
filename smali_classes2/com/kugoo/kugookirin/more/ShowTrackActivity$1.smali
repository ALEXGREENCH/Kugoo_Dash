.class Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;
.super Ljava/lang/Object;
.source "ShowTrackActivity.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ShowTrackActivity;->screenshotSystem()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$1;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    const v1, 0x7f120230

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/more/ShowTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
