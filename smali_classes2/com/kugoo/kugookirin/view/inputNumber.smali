.class public Lcom/kugoo/kugookirin/view/inputNumber;
.super Landroid/widget/LinearLayout;
.source "inputNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;
    }
.end annotation


# instance fields
.field private currentNumber:I

.field private default_value:I

.field private enable:Ljava/lang/Boolean;

.field private flag:Z

.field private input_edit:Landroid/widget/EditText;

.field private left_text:Landroid/view/View;

.field private max:I

.field private min:I

.field private minputNumberListener:Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;

.field private right_text:Landroid/view/View;

.field private step:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/inputNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/inputNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 26
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/inputNumber;->minputNumberListener:Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;

    const/4 p3, 0x1

    .line 27
    iput-boolean p3, p0, Lcom/kugoo/kugookirin/view/inputNumber;->flag:Z

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d00ad

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/view/inputNumber;->initArrts(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/view/inputNumber;->addView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0, p3}, Lcom/kugoo/kugookirin/view/inputNumber;->initView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/inputNumber;->initEvent()V

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initArrts(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;
    .locals 2

    .line 48
    sget-object v0, Lcom/kugoo/kugookirin/R$styleable;->inputNumber:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/inputNumber;->max:I

    const/4 p2, 0x3

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/inputNumber;->min:I

    const/4 p2, 0x4

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/inputNumber;->step:I

    .line 52
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/view/inputNumber;->enable:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/inputNumber;->default_value:I

    return-object p1
.end method

.method private initEvent()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->left_text:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->right_text:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a030d

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->left_text:Landroid/view/View;

    const v0, 0x7f0a04a7

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->right_text:Landroid/view/View;

    const v0, 0x7f0a02e1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->input_edit:Landroid/widget/EditText;

    return-void
.end method

.method private updateValue()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->input_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->minputNumberListener:Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;

    if-eqz v0, :cond_0

    .line 108
    iget v1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    invoke-interface {v0, v1}, Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;->onInputnumber(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->input_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a030d

    const-string v1, "step="

    const-string v2, "hahasa"

    const-string v3, "main"

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a04a7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    iget p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->step:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    .line 89
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->flag:Z

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->left_text:Landroid/view/View;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "2"

    .line 91
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->flag:Z

    .line 95
    :cond_1
    iget p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->max:I

    if-le p1, v0, :cond_2

    .line 96
    iput v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    .line 97
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->right_text:Landroid/view/View;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/inputNumber;->updateValue()V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "right"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->step:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_3
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->flag:Z

    if-nez p1, :cond_4

    .line 75
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->right_text:Landroid/view/View;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "1"

    .line 76
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/view/inputNumber;->flag:Z

    .line 79
    :cond_4
    iget p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->step:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    .line 80
    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->min:I

    if-ge p1, v0, :cond_5

    .line 81
    iput v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    .line 82
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->left_text:Landroid/view/View;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    :cond_5
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/inputNumber;->updateValue()V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "left"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->currentNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->step:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEditNumber(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/inputNumber;->input_edit:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOninputNumberListener(Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/inputNumber;->minputNumberListener:Lcom/kugoo/kugookirin/view/inputNumber$inputNumberListener;

    return-void
.end method
