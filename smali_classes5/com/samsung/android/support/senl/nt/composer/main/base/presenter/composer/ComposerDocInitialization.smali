.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field public mLoadSettingBgColor:Z

.field public final mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private final mObjectLayoutType:I

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field public mSinglePageDefaultPageCount:I

.field private mTemplateType:I

.field private final mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

.field public mUseTemplate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerDocInitialization"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mLoadSettingBgColor:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mSinglePageDefaultPageCount:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mUseTemplate:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTemplateType:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getLayoutOption()I

    move-result p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->LAYOUT_WRAP_TEXT_AROUND:I

    if-eq p1, p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->LAYOUT_WRAP_TEXT_BEHIND:I

    :cond_0
    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mObjectLayoutType:I

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    const-string p2, "ComposerDocInitialization end"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultAlign()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setAutoFitOption(I)V

    const/high16 p2, 0x41800000    # 16.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, p2, v1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    new-instance p2, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    return-void
.end method

.method private initDefaultTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mUseTemplate:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->getDefaultTemplate()Landroidx/core/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTemplateType:I

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setDefaultTemplate(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTemplateType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setDefaultTemplate(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initEmptyBodyTextForCoedit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isCoeditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    move v5, v4

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v7

    if-ne v7, v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v6

    if-ne v6, v3, :cond_2

    move v5, v3

    goto :goto_0

    :cond_4
    move v4, v2

    move v5, v4

    :cond_5
    if-nez v4, :cond_6

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getFontSizeDelta()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;-><init>(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    :cond_6
    if-nez v5, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_light_font_color:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v6

    if-ne v6, v1, :cond_8

    move v2, v3

    :cond_9
    if-nez v2, :cond_a

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;->getStoredValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    :cond_a
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEmptyBodyTextForCoedit# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initNew(ZII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$attr;->backgroundColor:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->resolveAttribute(Landroid/app/Activity;I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mLoadSettingBgColor:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundColor(I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setBlockToInsert(Z)V

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mSinglePageDefaultPageCount:I

    mul-int/2addr p3, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    const/4 p3, 0x3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p2, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->add(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V

    move p1, v1

    :goto_0
    if-ge p1, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p1, p2, p3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->add(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setBlockToInsert(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setInvertBackgroundColor()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setFixedParamCoeditNote()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getFontSizeDelta()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;-><init>(I)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;->getStoredValue()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_light_font_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;-><init>(III)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->initBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)V

    return-void
.end method

.method public static setPageDefaultHeight(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatioTypeFromSettings()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageDefaultHeight#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageDefaultHeight# getDefaultPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getDefTemplateType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getDefTemplateType()I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getDefTemplatePath()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getDefTemplatePath()Ljava/lang/String;

    move-result-object v11

    move-object v8, p1

    move v12, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setPageDefaultHeight(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initData# page count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->initDefaultTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V

    new-instance v4, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;->setPageVerticalPadding(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mObjectLayoutType:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setObjectDefaultFlowLayoutType(I)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v6, :cond_0

    move v4, v5

    :cond_0
    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->initNew(ZII)V

    move v4, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#ListPageAppendPage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->printFileLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->initEmptyBodyTextForCoedit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->clearHistory()V

    const-string p1, "clearHistory "

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setFixedParamCoeditNote()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isCoeditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_LTR:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setFixedTextDirection(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_LIGHT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setFixedBackgroundTheme(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;)V

    return-void
.end method

.method public setInvertBackgroundColor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isCoeditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_swiched_to_light_mode:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mTemplateType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->invertBackgroundColor(Z)V

    return-void
.end method
