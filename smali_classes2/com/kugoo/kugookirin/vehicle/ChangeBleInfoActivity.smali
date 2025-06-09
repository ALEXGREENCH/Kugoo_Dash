.class public Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangeBleInfoActivity.java"


# instance fields
.field changePwdLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ee
    .end annotation
.end field

.field confirmPwdEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0144
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field extraData:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field newName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ea
    .end annotation
.end field

.field newNameEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03eb
    .end annotation
.end field

.field newPwdEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ed
    .end annotation
.end field

.field oldPwd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041a
    .end annotation
.end field

.field oldPwdEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041b
    .end annotation
.end field

.field old_pwd_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041c
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field topBartitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 146
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initBroadcast()V
    .locals 3

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->ACTION_DATA_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private kg14SendLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const p1, 0x7f1201a8

    .line 300
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LKSC+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const p1, 0x7f1201c5

    .line 303
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 304
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->finish()V

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f1201c8

    .line 298
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private sendLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 314
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const p1, 0x7f1201a8

    .line 317
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 319
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/StringToAscii;->parseAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/StringToAscii;->parseAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->set_lock_Pwd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f1201c7

    .line 315
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 79
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 192
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 203
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 207
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 208
    fill-array-data v1, :array_0

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v0

    :cond_0
    return v3

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0550,
            0x7f0a05a2
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0550

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->finish()V

    goto/16 :goto_2

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 242
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_NAME:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const p1, 0x7f1200bb

    .line 245
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 246
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1201fc

    .line 247
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 249
    :cond_3
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SN+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_NAME:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p1, 0x7f120050

    .line 251
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 252
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->finish()V

    goto/16 :goto_2

    .line 254
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v0, "pwd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 255
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_PASSWORD:Ljava/lang/String;

    const-string v2, "000000"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwdEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newPwdEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->confirmPwdEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 262
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 264
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 265
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SC+"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_BLUETOOTH_PASSWORD:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const p1, 0x7f1201c5

    .line 267
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->finish()V

    goto/16 :goto_2

    :cond_6
    const p1, 0x7f1201c7

    const/4 v0, 0x1

    .line 270
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_7
    const p1, 0x7f1201a8

    .line 273
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    const p1, 0x7f1201bc

    .line 276
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_9
    :goto_0
    const p1, 0x7f120130

    .line 260
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 279
    :cond_a
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v0, "lock_pwd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 280
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->oldPwdEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newPwdEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->confirmPwdEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v3, "kgkrn14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v3, "kgkrn15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v3, "kgkrn16"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    .line 286
    :cond_b
    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->sendLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :cond_c
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->kg14SendLock(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 68
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->unbinder:Lbutterknife/Unbinder;

    .line 70
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "edit_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    .line 71
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->preferences:Landroid/content/SharedPreferences;

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->initBroadcast()V

    .line 74
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 230
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->topBartitle:Landroid/widget/TextView;

    const v3, 0x7f120365

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->changePwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v3, "pwd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->topBartitle:Landroid/widget/TextView;

    const v3, 0x7f120366

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->changePwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->extraData:Ljava/lang/String;

    const-string v3, "lock_pwd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->topBartitle:Landroid/widget/TextView;

    const v3, 0x7f12021f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->newNameEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->changePwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleType:Ljava/lang/String;

    const-string v1, "kgkrn16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->old_pwd_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public set_lock_Pwd(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0x18

    if-eq v1, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 123
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 124
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    .line 125
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    .line 126
    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    .line 127
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    .line 129
    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0x10

    .line 130
    invoke-virtual {v0, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v15, 0x12

    .line 132
    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x14

    .line 133
    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x16

    .line 134
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 135
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0xf

    new-array v10, v10, [Ljava/lang/String;

    const-string v18, "AA"

    aput-object v18, v10, v1

    const/4 v1, 0x1

    const-string v18, "17"

    aput-object v18, v10, v1

    const-string v1, "11"

    aput-object v1, v10, v4

    const/4 v1, 0x3

    aput-object v5, v10, v1

    aput-object v7, v10, v6

    const/4 v1, 0x5

    aput-object v9, v10, v1

    aput-object v11, v10, v8

    const/4 v1, 0x7

    aput-object v13, v10, v1

    const/16 v1, 0x8

    aput-object v14, v10, v1

    const/16 v1, 0x9

    aput-object v16, v10, v1

    const/16 v1, 0xa

    aput-object v17, v10, v1

    const/16 v1, 0xb

    aput-object v2, v10, v1

    const/16 v1, 0xc

    aput-object v15, v10, v1

    const/16 v1, 0xd

    aput-object v12, v10, v1

    const/16 v1, 0xe

    aput-object v3, v10, v1

    .line 137
    invoke-static {v10}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->xor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AA1711"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "vvvvvvvv======"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendHexString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
