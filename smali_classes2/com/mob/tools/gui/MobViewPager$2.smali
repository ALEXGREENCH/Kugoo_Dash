.class Lcom/mob/tools/gui/MobViewPager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/MobViewPager;

.field final synthetic val$immediate:Z

.field final synthetic val$whichScreen:I


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/MobViewPager;IZ)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager$2;->this$0:Lcom/mob/tools/gui/MobViewPager;

    iput p2, p0, Lcom/mob/tools/gui/MobViewPager$2;->val$whichScreen:I

    iput-boolean p3, p0, Lcom/mob/tools/gui/MobViewPager$2;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager$2;->this$0:Lcom/mob/tools/gui/MobViewPager;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager$2;->val$whichScreen:I

    iget-boolean v2, p0, Lcom/mob/tools/gui/MobViewPager$2;->val$immediate:Z

    invoke-static {v0, v1, v2}, Lcom/mob/tools/gui/MobViewPager;->access$000(Lcom/mob/tools/gui/MobViewPager;IZ)V

    return-void
.end method
