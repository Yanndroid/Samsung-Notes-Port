.class public Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSwitchView"


# instance fields
.field private mFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

.field private mFontSize:F

.field private mOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mText:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontSize:F

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private initDefaultView()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_common_switch:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_change_style_chip_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    sget v0, Lcom/samsung/android/spen/R$drawable;->drawing_ripple_rect_pressed:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;-><init>(Landroid/widget/Checkable;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private initFindView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setTextFont(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;F)V

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private setTextFont(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;F)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontSize:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v1, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    aput-object v1, v0, v4

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->initFindView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->initDefaultView()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setDefaultStyle()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->initView()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked() checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSwitchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultStyle()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setTextFont(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;F)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setText(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    return-void
.end method
