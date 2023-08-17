.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultPageRatio:F

.field private mHasPDFPage:Z

.field private mHasPDFPageNext:Z

.field private mIsPickerMode:Z

.field private mIsSettingMode:Z

.field private mIsSingleMode:Z

.field private mIsTwoPage:Z

.field private mNextPageHeight:I

.field private mNextPageWidth:I

.field private mPageHeight:I

.field private mPageIndex:I

.field private mPageWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPageRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mDefaultPageRatio:F

    return v0
.end method

.method public getHasPDFPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mHasPDFPage:Z

    return v0
.end method

.method public getHasPDFPageNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mHasPDFPageNext:Z

    return v0
.end method

.method public getIsSingleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsSingleMode:Z

    return v0
.end method

.method public getIsTwoPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsTwoPage:Z

    return v0
.end method

.method public getNextPageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageHeight:I

    return v0
.end method

.method public getNextPageRatio()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageWidth:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageHeight:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mDefaultPageRatio:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result v0

    return v0
.end method

.method public getNextPageRatioHeight()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getNextPageRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNextPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageWidth:I

    return v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageHeight:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageIndex:I

    return v0
.end method

.method public getPageRatio()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageWidth:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageHeight:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mDefaultPageRatio:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result v0

    return v0
.end method

.method public getPageRatioHeight()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageWidth:I

    return v0
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "template_single_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsSingleMode:Z

    const-string v0, "template_has_pdf_page"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mHasPDFPage:Z

    const-string v0, "template_is_two_page"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsTwoPage:Z

    const-string v0, "template_has_pdf_page_next"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mHasPDFPageNext:Z

    const/4 v0, -0x1

    const-string v2, "template_page_index"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageIndex:I

    const-string v0, "template_page_width"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageWidth:I

    const-string v0, "template_page_height"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mPageHeight:I

    const-string v0, "template_next_page_width"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageWidth:I

    const-string v0, "template_next_page_height"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mNextPageHeight:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatioTypeFromSettings()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mDefaultPageRatio:F

    const-string v0, "template_picker_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsPickerMode:Z

    const-string v0, "template_setting_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsSettingMode:Z

    return-void
.end method

.method public isPickerMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsPickerMode:Z

    return v0
.end method

.method public isSettingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->mIsSettingMode:Z

    return v0
.end method
