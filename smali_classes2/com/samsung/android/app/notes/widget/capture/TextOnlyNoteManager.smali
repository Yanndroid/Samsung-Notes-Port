.class public Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FONT_SIZE:I = 0x11

.field private static final FIRST_PAGE:I = 0x0

.field private static final FOLD_SHORTCUT_WIDGET_FONT_RATIO:F = 2.0f

.field private static final LARGER_SCREEN_SIZE_ADJUST_VALUE:F = 6.0f

.field private static final SECOND_PAGE:I = 0x1

.field private static final SHORTCUT_WIDGET_FONT_RATIO:F = 1.6f

.field private static final SHORTCUT_WIDGET_FONT_TABLET_RATIO:F = 1.3f

.field private static final SMALLER_SCREEN_SIZE_ADJUST_VALUE:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "TextOnlyNoteManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private captureBitmap(Lcom/samsung/android/app/notes/widget/capture/CaptureManager;IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/widget/capture/CaptureManager;",
            "II",
            "Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isListPageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1, p3, p4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->captureListPage(IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->captureSinglePage(ILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private copyBodyTextInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getLeftMargin()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTopMargin()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getRightMargin()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getBottomMargin()F

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getTextAlignment()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getFontSize()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getAutoFitOption()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setAutoFitOption(I)V

    return-void
.end method

.method private copyBodyTextPage(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;II)I
    .locals 4

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v0

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionLength(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyBodyTextPage# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "TextOnlyNoteManager"

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p2, p4, p1, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    :cond_0
    return v1
.end method

.method private copyBodyTextSinglePage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)V
    .locals 5

    mul-int/lit8 v0, p5, 0x2

    new-instance v1, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    cmpg-float v3, v3, v0

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_0
    move v2, v4

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyBodyTextSinglePage# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextOnlyNoteManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0, v4, p2, v4, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    invoke-virtual {p3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    mul-int/lit8 p5, p5, 0x3

    invoke-virtual {p1, p4, p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setSize(II)Z

    return-void
.end method

.method private copyPageInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImageMode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(Ljava/lang/String;Z)V

    return-void
.end method

.method private createScaledTextOnlyNote(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 9

    :try_start_0
    new-instance v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->scaleFontSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)V

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result p4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, v8, p2, p3}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->updateTextSection(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v8, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    mul-int/lit8 p4, p4, 0x3

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setSize(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createScaledTextOnlyNote# Failed to open a SpenWNote "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextOnlyNoteManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createTextOnlyNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    move-object/from16 v9, p2

    const-string v10, "createTextOnlyNote# closeException - "

    const-string v11, "TextOnlyNoteManager"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2, v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, v0

    move-object v7, v14

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->createTextOnlyNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v14, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v14

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v13, v14

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTextOnlyNote# exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_0

    :try_start_4
    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_3
    return-void

    :goto_4
    if-eqz v13, :cond_1

    :try_start_5
    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    throw v1
.end method

.method private getFontSize(Landroid/content/Context;FFF)I
    .locals 2

    div-float v0, p4, p3

    mul-float v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletUX(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    cmpl-float p1, p4, p3

    const/high16 p3, 0x3f800000    # 1.0f

    if-lez p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40c00000    # 6.0f

    :goto_0
    sub-float/2addr p3, v0

    mul-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getFontSize# fontSize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TextOnlyNoteManager"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getShortcutFontSize(Landroid/content/Context;F)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getWidgetAddDisplayType(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->DISPLAY_DEVICE_TYPE_SUB:I

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    :goto_0
    mul-float/2addr p1, p2

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletUX(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x3fa66666    # 1.3f

    goto :goto_0

    :cond_1
    const p1, 0x3fcccccd    # 1.6f

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShortcutFontSize# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TextOnlyNoteManager"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p1

    return p1
.end method

.method private scaleFontSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)V
    .locals 10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->isCurrentCoverScreenMirroringDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "scaleFontSize# screenWidth : "

    const-string v9, "TextOnlyNoteManager"

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->updateFontSizeSpan(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IIZLjava/util/ArrayList;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", updateFontSizeSpan : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", widgetWidth: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41880000    # 17.0f

    if-eqz p4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->getShortcutFontSize(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_2
    int-to-float p4, p3

    int-to-float v2, v0

    invoke-direct {p0, p1, v1, p4, v2}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->getFontSize(Landroid/content/Context;FFF)I

    move-result p1

    :goto_0
    new-instance p4, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    int-to-float p1, p1

    invoke-direct {p4, v1, v2, v3, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {p2, p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", default size scale , widgetWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateFontSizeSpan(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IIZLjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;",
            "IIZ",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v0

    if-eqz p5, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->getShortcutFontSize(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    :cond_1
    int-to-float v2, p4

    int-to-float v3, p3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->getFontSize(Landroid/content/Context;FFF)I

    move-result v0

    :goto_1
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result v5

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private updateTextSection(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    const/4 p1, 0x0

    const/4 v1, -0x1

    invoke-virtual {p3, p1, v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSectionData(III)V

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSectionData(III)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v1

    move v3, p1

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result v5

    if-ge p1, v5, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getBottomMargin()F

    move-result v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    mul-float/2addr v6, v8

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageVerticalPadding()I

    move-result v8

    mul-int/2addr v8, v3

    int-to-float v8, v8

    sub-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-virtual {p3, v3, v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSectionData(III)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineStartIndex(I)I

    move-result v4

    const/4 v3, 0x2

    if-lt v7, v3, :cond_0

    invoke-virtual {p2, p4, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move v3, v7

    goto :goto_1

    :cond_0
    move v3, v7

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result p1

    sub-int/2addr p1, v4

    add-int/2addr p1, v2

    invoke-virtual {p3, v3, v4, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSectionData(III)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    return-void
.end method


# virtual methods
.method public captureTextOnlyBitmap(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "textOnly"

    invoke-static {p1, v0, p3}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetCacheFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TextOnlyNoteManager"

    if-nez v1, :cond_1

    const-string v1, "captureTextOnlyBitmap# does not created text only note. reCreate."

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->filePath:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->listMode:Z

    invoke-direct {p0, p1, v1, p3, v3}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->createTextOnlyNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0, p1, v0, p5, p7}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->createScaledTextOnlyNote(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, "captureTextOnlyBitmap# fail to create text only wNote"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    new-instance p7, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;

    const/4 v1, 0x1

    invoke-direct {p7, p1, p3, v1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V

    iget v3, p2, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageCount:I

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureTextOnlyBitmap# pageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", textPage: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p2, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->textPageCount:I

    new-instance p2, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {p2, p1, p4}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    if-eqz p6, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;->setForceContentsThemeColor(I)Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;->setForceContentsThemeColor(I)Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    move-result-object p1

    :goto_0
    const/4 p2, 0x2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p0, p7, p2, p5, p1}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->captureBitmap(Lcom/samsung/android/app/notes/widget/capture/CaptureManager;IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p7}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public createTextOnlyNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    move/from16 v0, p5

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v5

    const-string v4, "TextOnlyNoteManager"

    const-string v1, "createTextOnlyNote# start"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    :goto_0
    const-string/jumbo v2, "textOnly"

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static {v3, v2, v8}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetCacheFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "createTextOnlyNote# closeException - "

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    if-eqz p6, :cond_2

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v17, v14

    move-object/from16 v21, v15

    move-object/from16 v15, p6

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v12, v4

    move v11, v13

    move/from16 v17, v14

    move-object v2, v15

    move-object/from16 v8, v16

    move-object/from16 v15, p6

    move-object v14, v6

    goto/16 :goto_1e

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object v12, v4

    move v11, v13

    move/from16 v17, v14

    move-object v2, v15

    move-object/from16 v8, v16

    move-object/from16 v15, p6

    move-object v14, v6

    goto/16 :goto_18

    :cond_2
    :goto_2
    :try_start_1
    new-instance v17, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v8

    const/16 v9, 0xfa0

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_1 .. :try_end_1} :catch_19
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v13, v18

    move/from16 v14, v19

    move-object/from16 v21, v15

    move/from16 v15, v20

    :try_start_2
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v15, v17

    const/16 v17, 0x1

    :goto_3
    :try_start_3
    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v14

    new-instance v13, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v10, 0x0

    sget-object v12, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const/16 v18, 0x0

    move-object v8, v13

    move-object/from16 v9, p1

    move-object v11, v1

    move-object/from16 v22, v13

    move/from16 v13, p5

    move-object v6, v14

    move/from16 v14, v18

    :try_start_4
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object/from16 v8, v22

    :try_start_5
    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultWidth(I)V

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyPageInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    sget-object v10, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-ne v1, v10, :cond_3

    :try_start_6
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    :try_start_7
    invoke-virtual {v15, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    invoke-virtual {v8, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v12

    invoke-direct {v7, v10, v12}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyPageInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v14, p2

    move-object v1, v0

    move-object v12, v4

    :goto_5
    move-object/from16 v2, v21

    goto/16 :goto_1e

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_3
    const/4 v11, 0x1

    :cond_4
    :goto_7
    :try_start_8
    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageVerticalPadding()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageVerticalPadding(I)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v10

    invoke-direct {v7, v6, v10}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyBodyTextInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    sget-object v10, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v1, v10, :cond_5

    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v12, v4

    move-object v4, v8

    move v13, v5

    move/from16 v5, p5

    move-object/from16 v14, p2

    move-object v0, v6

    move v6, v13

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyBodyTextSinglePage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :cond_5
    move-object/from16 v14, p2

    move-object v10, v2

    move-object v12, v4

    move-object v0, v6

    :try_start_a
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-direct {v7, v0, v1, v9, v9}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyBodyTextPage(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;II)I

    move-result v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-direct {v7, v0, v2, v11, v1}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->copyBodyTextPage(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;II)I

    :goto_8
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_6

    :try_start_b
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    const-string v1, "createTextOnlyNote#. copy insertText"

    invoke-static {v12, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_6
    :try_start_c
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextParagraph(Ljava/util/ArrayList;)V

    invoke-virtual {v8, v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->quickSave(Ljava/lang/String;)V

    const-string v0, "createTextOnlyNote# done"

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v8, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    if-eqz v17, :cond_7

    invoke-virtual {v15, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_9
    if-eqz v17, :cond_a

    goto/16 :goto_1c

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v14, p2

    move-object v12, v4

    :goto_a
    move-object/from16 v2, v21

    goto/16 :goto_1d

    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    goto :goto_b

    :catch_c
    move-exception v0

    :goto_b
    move-object/from16 v14, p2

    move-object v12, v4

    :goto_c
    move-object/from16 v2, v21

    goto/16 :goto_18

    :catchall_6
    move-exception v0

    move-object/from16 v14, p2

    move-object v12, v4

    move-object/from16 v2, v21

    const/4 v11, 0x1

    goto/16 :goto_1d

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v0

    :goto_d
    move-object/from16 v14, p2

    move-object v12, v4

    move-object/from16 v2, v21

    const/4 v11, 0x1

    goto/16 :goto_18

    :catchall_7
    move-exception v0

    move-object/from16 v14, p2

    move-object v12, v4

    goto :goto_f

    :catch_10
    move-exception v0

    goto :goto_e

    :catch_11
    move-exception v0

    goto :goto_e

    :catch_12
    move-exception v0

    :goto_e
    move-object/from16 v14, p2

    move-object v12, v4

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v12, v4

    move-object v14, v6

    :goto_f
    move-object/from16 v2, v21

    const/4 v11, 0x1

    move-object v1, v0

    goto :goto_14

    :catch_13
    move-exception v0

    goto :goto_10

    :catch_14
    move-exception v0

    goto :goto_10

    :catch_15
    move-exception v0

    :goto_10
    move-object v12, v4

    move-object v14, v6

    :goto_11
    move-object/from16 v2, v21

    const/4 v11, 0x1

    goto :goto_17

    :catchall_9
    move-exception v0

    move-object v12, v4

    move-object v14, v6

    move-object/from16 v2, v21

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto :goto_13

    :catch_16
    move-exception v0

    goto :goto_12

    :catch_17
    move-exception v0

    goto :goto_12

    :catch_18
    move-exception v0

    :goto_12
    move-object v12, v4

    move-object v14, v6

    move-object/from16 v2, v21

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto :goto_16

    :catchall_a
    move-exception v0

    move-object v12, v4

    move v11, v13

    move v9, v14

    move-object v2, v15

    move-object v14, v6

    :goto_13
    move-object/from16 v15, p6

    move-object v1, v0

    move/from16 v17, v9

    :goto_14
    move-object/from16 v8, v16

    goto :goto_1e

    :catch_19
    move-exception v0

    goto :goto_15

    :catch_1a
    move-exception v0

    goto :goto_15

    :catch_1b
    move-exception v0

    :goto_15
    move-object v12, v4

    move v11, v13

    move v9, v14

    move-object v2, v15

    move-object v14, v6

    :goto_16
    move-object/from16 v15, p6

    move/from16 v17, v9

    :goto_17
    move-object/from16 v8, v16

    :goto_18
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTextOnlyNote# exception - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v8, :cond_8

    :try_start_f
    invoke-virtual {v8, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    goto :goto_19

    :catch_1c
    move-exception v0

    goto :goto_1a

    :cond_8
    :goto_19
    if-eqz v15, :cond_9

    if-eqz v17, :cond_9

    invoke-virtual {v15, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1c

    goto :goto_1b

    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1b
    if-eqz v17, :cond_a

    :goto_1c
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_b
    move-exception v0

    :goto_1d
    move-object v1, v0

    :goto_1e
    if-eqz v8, :cond_b

    :try_start_10
    invoke-virtual {v8, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    goto :goto_1f

    :catch_1d
    move-exception v0

    goto :goto_20

    :cond_b
    :goto_1f
    if-eqz v15, :cond_c

    if-eqz v17, :cond_c

    invoke-virtual {v15, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1d

    goto :goto_21

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_21
    if-eqz v17, :cond_d

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    :cond_d
    throw v1
.end method
