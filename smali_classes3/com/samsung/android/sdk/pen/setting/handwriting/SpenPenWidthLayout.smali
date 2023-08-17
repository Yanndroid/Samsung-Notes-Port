.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface;


# static fields
.field private static final DEFAULT_SIZE_LEVEL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SpenPenWidthLayout"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

.field private mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

.field private mPreviewColor:I

.field private mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

.field private mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

.field private mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    sget v0, Lcom/samsung/android/spen/R$color;->component_common:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewColor:I

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_width_layout:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$id;->fixed_width_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_fixed_thickness:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p2, Lcom/samsung/android/spen/R$id;->variable_width_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_variable_thickness:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    :cond_2
    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenInfo() Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " color="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenPenWidthLayout"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getPenName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    new-instance p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {p2, p3, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewColor:I

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x64

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setFixedWidth(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setFixedWidth(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPenWidth(ZZ)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPenWidth() isFixedWidth="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenPenWidthLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mFixedWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->mVariableWidthPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method
