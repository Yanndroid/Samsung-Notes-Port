.class Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenChangeStyleImp"

.field private static final UPDATE_ALL:I = 0x7

.field private static final UPDATE_COLOR:I = 0x4

.field private static final UPDATE_NO_FILL:I = 0x2

.field private static final UPDATE_SIZE:I = 0x1


# instance fields
.field private mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

.field private mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mContext:Landroid/content/Context;

.field private mInitCompleted:Z

.field private mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

.field private mNoFillLayout:Landroid/view/ViewGroup;

.field private mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mInitCompleted:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return-void
.end method

.method private updateView(IZZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateView() info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenChangeStyleImp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->getChangeStyleInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    const-string v5, ""

    invoke-virtual {v3, v5, v4, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setPenInfo(Ljava/lang/String;II)V

    :cond_1
    and-int/lit8 v1, p1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setSelected(ZZ)Z

    :cond_2
    const/4 p2, 0x4

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_5

    iget p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    invoke-virtual {p1, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[FZ)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    iget-boolean p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->resetColor()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    invoke-virtual {p1, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[FZ)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public changeColor(I[FZ)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenColorControl.onColorChanged() info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v4, p2, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SpenChangeStyleImp"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->getChangeStyleInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    iget v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    if-nez v5, :cond_2

    const/4 v9, 0x1

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeColor(II[FZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v3, v1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return v3

    :cond_1
    return v1

    :cond_2
    iget-boolean v6, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    xor-int/lit8 v9, v6, 0x1

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeColor(II[FZZ)Z

    iget-boolean p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-nez p1, :cond_3

    return v3

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeBlankShape(Z)Z

    invoke-direct {p0, v2, v3, v3}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return v3
.end method

.method public changeType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return v0

    :cond_1
    return v1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mInitCompleted:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    return-void
.end method

.method public getColorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    return-object v0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->getChangeStyleInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNoFillView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSizeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    return-object v0
.end method

.method public initView(Landroid/view/ViewGroup;Z)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_change_style_no_fill:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/spen/R$id;->no_fill_check_box:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillCheckBox:Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$color;->setting_title_string_color:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setCheckColor(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/spen/R$id;->no_fill_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/widget/TextView;

    aput-object p1, v3, v2

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {v0, p1, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mNoFillLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mInitCompleted:Z

    return-void
.end method

.method public refreshColor()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return-void
.end method

.method public setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    const/4 p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->mChangeStyleManager:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->setChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->updateView(IZZ)V

    :cond_1
    return-void
.end method
