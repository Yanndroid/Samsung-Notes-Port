.class Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ACTION_BUTTON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenPenLayoutVertical"


# instance fields
.field private mActionButtonCount:I

.field private mActionLayout:Landroid/widget/LinearLayout;

.field private mActionLayoutId:I

.field private mContentBody:Landroid/widget/LinearLayout;

.field private mDefaultResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_dialog_action_layout:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mDefaultResource:I

    sget v0, Lcom/samsung/android/spen/R$id;->action_button_layout:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayoutId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->initValue()V

    return-void
.end method

.method private getPixelSize(Landroid/content/Context;I)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private initActionLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->initValue()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-le v1, v0, :cond_3

    move v1, v0

    :cond_3
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionButtonCount:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 7

    const-string v0, "SpenPenLayoutVertical"

    const-string v1, "addActionButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getButtonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mDefaultResource:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_peninfo_selector_action_layout_height:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getPixelSize(Landroid/content/Context;I)I

    move-result v2

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_space_last:I

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getPixelSize(Landroid/content/Context;I)I

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_peninfo_selector_action_layout_margin_top:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getPixelSize(Landroid/content/Context;I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_peninfo_selector_action_layout_margin_bottom:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getPixelSize(Landroid/content/Context;I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/samsung/android/spen/R$id;->cancel:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/spen/R$id;->done:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    move v0, v3

    :goto_0
    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionButtonCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionButtonCount:I

    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v0, v5, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    invoke-static {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    const/high16 p1, 0x41900000    # 18.0f

    new-array v0, v5, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    invoke-static {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    return-object v2

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->initValue()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getActionLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getButtonCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionButtonCount:I

    return v0
.end method

.method public initValue()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionButtonCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mActionLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setContentView(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->initActionLayout()V

    return-void
.end method
