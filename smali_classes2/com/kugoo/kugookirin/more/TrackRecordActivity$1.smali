.class Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;
.super Ljava/lang/Object;
.source "TrackRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackRecordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    const v1, 0x7f12035f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$000(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$100(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/NaviFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/more/NaviFragment;->showCheckBox()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$000(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$1;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$200(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/TrackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/more/TrackFragment;->showCheckBox()V

    :cond_1
    :goto_0
    return-void
.end method
