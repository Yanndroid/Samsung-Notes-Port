.class public Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSelectionLayout"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

.field private mContext:Landroid/content/Context;

.field private mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

.field private final mOptionSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SpenSelectionLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_selection_layout_v53:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->initRadioButton()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->initSwitchView()V

    return-void
.end method

.method private initRadioButton()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->selection_radio_button_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$drawable;->selection_lasso:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$drawable;->selection_rectangle:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$id;->selection_radio_group:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->initLayout(ILandroid/widget/RadioGroup$OnCheckedChangeListener;)Z

    sget v8, Lcom/samsung/android/spen/R$id;->selection_radio_button_lasso:I

    sget v4, Lcom/samsung/android/spen/R$id;->selection_radio_ripple_button_view_1:I

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_lasso:I

    move-object v2, p0

    move v3, v8

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(IIILandroid/graphics/drawable/Drawable;I)Z

    sget v9, Lcom/samsung/android/spen/R$id;->selection_radio_button_rect:I

    sget v4, Lcom/samsung/android/spen/R$id;->selection_radio_ripple_button_view_2:I

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_rectangle:I

    move v3, v9

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(IIILandroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setInfo(I)V

    return-void
.end method

.method private initSwitchView()V
    .locals 2

    sget v0, Lcom/samsung/android/spen/R$id;->partially_selected_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_include_partially_selected_objects:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private isSameSelectionInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    if-ne v2, v3, :cond_1

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setSwitchValue(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenSelectionLayout"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mOptionSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->close()V

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    return-object v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iget-boolean v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v0, "setInfo() From[%d, %s]->To[%d, %s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSelectionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->isSameSelectionInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    if-nez v0, :cond_2

    sget v0, Lcom/samsung/android/spen/R$id;->selection_radio_button_lasso:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/spen/R$id;->selection_radio_button_rect:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setInfo(I)V

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->setSwitchValue(Z)V

    return-void
.end method
