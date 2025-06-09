.class public Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CirclePlayVideoActivity.java"


# instance fields
.field private final RESULTCODE04:I

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field private mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05df
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05e8
    .end annotation
.end field

.field videoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0612
    .end annotation
.end field

.field private videoRealPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x3f5

    .line 41
    iput v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->RESULTCODE04:I

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 87
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "videoDeleteOrSave"

    const-string v2, ""

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f5

    .line 99
    invoke-virtual {p0, v1, v0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 102
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a02d2
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x3f5

    const-string v1, "videoDeleteOrSave"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, ""

    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 113
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string p1, "shahshha"

    const-string v2, "img_right"

    .line 117
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoRealPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "delete"

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0025

    .line 48
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 51
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->txtTitle:Landroid/widget/TextView;

    const v0, 0x7f120066

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->imgRight:Landroid/widget/ImageView;

    const v0, 0x7f0f00df

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "videoRealPath"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoRealPath:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 58
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoRealPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 67
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    .line 68
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    .line 70
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity$1;-><init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    return-void
.end method
