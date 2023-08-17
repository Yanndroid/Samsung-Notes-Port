.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SPDToSDocXConverter$TextBoxConverter"

.field private static final VOICE_MEMO_TYPE:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;-><init>()V

    return-void
.end method

.method private convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V
    .locals 6

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;->getNoteComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    goto :goto_0

    :cond_2
    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    goto :goto_0

    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    const-string v4, "Type"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x17

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->removeObject(Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->appendObjects(Ljava/util/ArrayList;)V

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_6
    return-void
.end method

.method private convertObjectLayoutType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getLayoutType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setLayoutType(I)V

    :cond_0
    return-void
.end method

.method private convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V
    .locals 9

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;->getNoteComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->getPageWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3fa66666    # 1.3f

    div-float/2addr v2, v3

    const v3, 0x3faccccd    # 1.35f

    mul-float/2addr v2, v3

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;->getNoteComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    invoke-direct {v2, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    invoke-direct {p2, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, p2

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v4

    div-float/2addr v4, v0

    new-instance v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result v8

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->getLineSpacingType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->getLineSpacing()F

    move-result v5

    div-float/2addr v5, v0

    new-instance v6, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v4

    invoke-direct {v6, v7, v4, p2, v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;-><init>(IIIF)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    invoke-virtual {p1, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getLeftMargin()F

    move-result p2

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTopMargin()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getRightMargin()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getBottomMargin()F

    move-result v3

    div-float/2addr v3, v0

    const/4 v0, 0x0

    cmpg-float v4, v1, v0

    if-gez v4, :cond_6

    move v1, v0

    :cond_6
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    return-void
.end method


# virtual methods
.method public convertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)Z
    .locals 2

    const-string v0, "SPDToSDocXConverter$TextBoxConverter"

    const-string v1, "convert object"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectLayoutType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
