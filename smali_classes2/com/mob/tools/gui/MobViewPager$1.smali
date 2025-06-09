.class Lcom/mob/tools/gui/MobViewPager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/MobViewPager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/MobViewPager;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/MobViewPager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager$1;->this$0:Lcom/mob/tools/gui/MobViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0
.end method
