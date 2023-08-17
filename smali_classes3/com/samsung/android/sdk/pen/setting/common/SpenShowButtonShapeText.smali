.class public Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButtonShapeBgColor:I

.field private mButtonShapePaint:Landroid/graphics/Paint;

.field private mButtonShapeRect:Landroid/graphics/RectF;

.field private mButtonShapeSettingEnabled:Z

.field private mButtonShapeStrokeBottom:I

.field private mButtonShapeStrokeHorizontal:I

.field private mButtonShapeStrokeRadius:I

.field private mButtonShapeStrokeTop:I

.field private mButtonShapeTextColor:I

.field private mIsButtonShapeTarget:Z

.field private mIsSetTextForButtonShape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "SpenShowButtonShapeText"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsButtonShapeTarget:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "SpenShowButtonShapeText"

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsButtonShapeTarget:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "SpenShowButtonShapeText"

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsButtonShapeTarget:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private getColor(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, " #%08X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_show_button_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeTop:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_show_button_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeBottom:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_show_button_left_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeHorizontal:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_show_button_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeRadius:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->isButtonShapeSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init(), mButtonShapeSettingEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenShowButtonShapeText"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isButtonShapeSettingEnable()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private setButtonShapeEnabled(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setButtonShapeEnabled() enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->getColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenShowButtonShapeText"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsButtonShapeTarget:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeTextColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeBgColor:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeSetting(Z)V

    return-void
.end method

.method private setButtonShapeSetting(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeTextColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeBgColor:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setTextColor(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    return-void
.end method


# virtual methods
.method public getVerticalOffset(Z)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->getBoxHeight(Landroid/text/Layout;)I

    move-result v1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/16 v2, 0x50

    sub-int/2addr v1, v0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged() mButtonShapeSettingEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenShowButtonShape"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->isButtonShapeSettingEnable()Z

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeSetting(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw() + text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenShowButtonShape"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeSettingEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsButtonShapeTarget:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move v7, v3

    :goto_0
    if-gt v7, v4, :cond_3

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    :cond_1
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_2

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    add-float/2addr v3, v1

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeTop:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeBottom:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeHorizontal:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeHorizontal:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeStrokeRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonShapeEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$color;->setting_bg_color:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(ZI)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++++++++ setTextColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->getColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenShowButtonShapeText"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mIsSetTextForButtonShape:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapeBgColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->mButtonShapePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
