.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingStraightenLayout"


# instance fields
.field private mInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;

.field private mLetterCorrectionEnabled:Z

.field private mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

.field private mLowSpacingEnabled:Z

.field private mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

.field private mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$ViewListener;

.field private mWordSpacingEnabled:Z

.field private mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionEnabled:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionEnabled:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingEnabled:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingEnabled:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingEnabled:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingEnabled:Z

    return p1
.end method

.method private construct(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingEnabled:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Straighten"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_straighten_layout:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$id;->letter_correction_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    const-string v1, "Letter correction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/samsung/android/spen/R$id;->low_spacing_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    const-string v1, "Low spacing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/samsung/android/spen/R$id;->word_spacing_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    const-string v1, "Word spacing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    return-void
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$ViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setLetterCorrectionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLetterCorrectionEnabled:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    return-void
.end method

.method public setLowSpacingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mLowSpacingEnabled:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    return-void
.end method

.method public setStraightenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$ViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$ViewListener;

    return-void
.end method

.method public setWordSpacingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->mWordSpacingEnabled:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    return-void
.end method
