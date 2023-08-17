.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;
.source "SourceFile"


# static fields
.field private static final INIT_PAGE_COUNT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SinglePageNoteComposer"


# instance fields
.field private mLastComposingHeight:F

.field private mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    sget-object p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->NONE:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result p1

    mul-int/lit16 p1, p1, 0x1f4

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setSize(II)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "page width : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",height : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SinglePageNoteComposer"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addMargin(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer$1;->$SwitchMap$com$samsung$android$support$senl$cm$base$spenwrapper$converter$sdoc$model$converters$INoteComposer$ComposingObjectType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mVerticalMargin:I

    int-to-float p1, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->OBJECT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->STROKES:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMargin# lastHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " + margin height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SinglePageNoteComposer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    return-void
.end method

.method private addNewLine(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-array v0, p1, [C

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    new-instance v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    add-int/2addr p1, v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {v3, v1, p1, v0, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method private addNewLinesUntil(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mVerticalMargin:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->getNeedNewLineCount(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addNewLine(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewLinesUntil# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "lines"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SinglePageNoteComposer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getNeedNewLineCount Error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->getNeedNewLineCount(F)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addNewLine(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;F)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addNewLinesUntil(F)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    return-void
.end method

.method private appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;F)F
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setLayoutType(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mHorizontalMargin:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->move(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p1, p2

    return p1
.end method

.method private appendObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;F)F
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mDP:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    mul-float v3, p3, v2

    invoke-direct {v1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->transferObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;FLandroid/graphics/PointF;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p3, p1

    return p3
.end method

.method private move(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private moveToBottom(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->moveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    return-void
.end method

.method public appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-eq v0, v2, :cond_2

    sget-object v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->NONE:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addMargin(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;F)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, p1, v1, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->measureHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->OBJECT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addMargin(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendObject# lastHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " + object height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SinglePageNoteComposer"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->attachFile(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public bridge synthetic appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    return-void
.end method

.method public appendObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/util/List;)V
    .locals 2
    .param p3    # Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPageDoc;",
            "Landroid/graphics/RectF;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->measureHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->STROKES:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addMargin(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendObjects# lastHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " + object height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SinglePageNoteComposer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->appendObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->moveToBottom(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->moveToBottom(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->STROKES:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    return-void
.end method

.method public appendTaskObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setLayoutType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->measureHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\n"

    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->OBJECT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addMargin(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addNewLinesUntil(F)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mAddedTaskInfo:Ljava/util/List;

    iget v3, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->makeTaskText(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    iget v1, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskId:I

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->OBJECT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    invoke-virtual {p0, v1, v2, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->getHorizontalSpace()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->getDPI()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float v2, v0, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->move(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;FF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    sget-object p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->OBJECT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iget p1, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/16 p1, 0x65

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->setTaskType(I)V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->measureHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mVerticalMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish# lastHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SinglePageNoteComposer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/SinglePageNoteComposer;->mLastComposingHeight:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v2

    rem-int v3, v0, v2

    div-int/2addr v0, v2

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish# pages : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageWidth:I

    mul-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setSize(II)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->finish()V

    return-void
.end method

.method public bridge synthetic getDPI()F
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getDPI()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastTaskObjectType()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getLastTaskObjectType()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastTaskStyle()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getLastTaskStyle()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObjectMaxHeight()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getObjectMaxHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getObjectMaxWidth()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getObjectMaxWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOldObjectMaxWidth()F
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getOldObjectMaxWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAddedTask(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->isAddedTask(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setPageColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->setPageColor(I)V

    return-void
.end method
