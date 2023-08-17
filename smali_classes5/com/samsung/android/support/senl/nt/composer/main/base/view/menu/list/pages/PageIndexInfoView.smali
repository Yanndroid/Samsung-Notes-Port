.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;
    }
.end annotation


# static fields
.field private static final ADJUST_TEXT_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

.field private final mIsTablet:Z

.field private mPageCountView:Landroid/widget/TextView;

.field private mPageIndexView:Landroid/widget/EditText;

.field private mPageIndexViewTextWatcher:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

.field private mPageInfoLayout:Landroid/view/View;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageIndexInfoView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;Z)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mIsTablet:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mIsTablet:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexViewTextWatcher:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getDisplayPageCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getDisplayPageIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getPageIndexShown(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getDisplayPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;->getTotalPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getDisplayPageIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;->getCurrentPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getPageIndexShown(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getDisplayPageCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->updatePageIndexView(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->updatePageInfoVoiceAssistant(II)V

    return-void
.end method

.method private isTextMeasureCase(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mIsTablet:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static bridge synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updatePageIndexView(I)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->isTextMeasureCase(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 p1, p1, 0x3

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private updatePageInfoVoiceAssistant(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageInfoLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_list_page_info:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageInfoLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPageIndexView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    return-object v0
.end method

.method public init(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_page_list_page_info_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageInfoLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_page_list_page_index_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    const v2, 0x10000006

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_toolbar_menu_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->convertPixelToSp(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/b;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexViewTextWatcher:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_page_list_count_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->convertPixelToSp(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updatePageCountInfo()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getDisplayPageIndex()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->getDisplayPageCount()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->updatePageIndexView(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->updatePageCountView(IZ)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->updatePageInfoVoiceAssistant(II)V

    return-void
.end method

.method public updatePageCountView(IZ)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->isTextMeasureCase(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;->getNextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$Contract;->getNextView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageInfoLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageIndexView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->mPageCountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 p1, p1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method
