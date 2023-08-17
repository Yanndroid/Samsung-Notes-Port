.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_SIZE_FOR_CANVAS:F = 16.0f

.field private static final SDOC_TEXT_LENGTH_LIMIT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "SDocXConverter$TextConverter"


# instance fields
.field private mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;

.field private mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method

.method private copyAlignment(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getAlignment()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->updateAlignmentByText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;I)Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p1, p3, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p1, p3, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p1, p3, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    :cond_5
    return-void
.end method

.method private copyBasic(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    const/high16 p1, -0x1000000

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->resizeFontSizeBySystem(F)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    return-void
.end method

.method private copyHyperTextDateTimeType(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getDateTimeType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->setDateTimeType(I)V

    return-void
.end method

.method private copyHyperTextSpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getHypertextType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->setHyperTextType(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyHyperTextDateTimeType(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->setHyperTextType(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyParsingState(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->isParsedText()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;-><init>(IIZ)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    return-void
.end method

.method private copySpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result p1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;-><init>(IIIZ)V

    return-object v2

    :pswitch_1
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBackgroundColor()I

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;-><init>(IIII)V

    return-object v2

    :pswitch_2
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result p1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingSpan;-><init>(IIIZ)V

    return-object v2

    :pswitch_3
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingBackgroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getComposingBackgroundColor()I

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingBackgroundColorSpan;-><init>(IIII)V

    return-object v2

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyHyperTextSpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V

    return-object v0

    :pswitch_5
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getFontSize()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->resizeFontSizeBySystem(F)F

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    return-object v2

    :pswitch_6
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getForegroundColor()I

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;-><init>(IIII)V

    return-object v2

    :pswitch_7
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result p1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;-><init>(IIIZ)V

    return-object v2

    :pswitch_8
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result p1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;-><init>(IIIZ)V

    return-object v2

    :pswitch_9
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result p1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;-><init>(IIIZ)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copySpans(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->getSpan()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copySpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v4

    if-le v3, v2, :cond_4

    goto :goto_1

    :cond_4
    if-le v4, v2, :cond_5

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSpan(Ljava/util/ArrayList;)V

    return-void
.end method

.method private copyTaskStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->isAddedTask(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p1, p3, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    const/4 v1, 0x4

    if-eq v3, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getLastTaskObjectType()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->NONE:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getLastTaskStyle()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/16 v5, 0x65

    if-ne v3, v5, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectTextBox(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v4, p3, v4, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->setTaskType(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {v0, p3, v3, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->setBulletNumber(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v1, p3, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, p3, v1, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {v0, p3, v3, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->Checkout(Z)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {v0, p3, v3, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p3, v1, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    sget-object p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->TEXT:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iget-object p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {p3, p1, p2, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    :cond_8
    return-void
.end method

.method private resizeFontSizeBySystem(F)F
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getDefaultTextSizeDeltaByDevice()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getHWSelectableTextSize()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    array-length p1, v1

    new-array v2, p1, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget v1, v2, v3

    const/4 v3, 0x1

    :goto_1
    if-ge v3, p1, :cond_4

    sub-float v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget v5, v2, v3

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    aget v1, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_2
    const-string v0, "SDocXConverter$TextConverter"

    const-string v1, "selectable string is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->resizeFontSizeForCanvas(F)F

    move-result p1

    return p1
.end method

.method private resizeFontSizeForCanvas(F)F
    .locals 2

    const/high16 v0, 0x41880000    # 17.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :cond_0
    const/high16 v0, 0x41b80000    # 23.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/high16 p1, 0x41a00000    # 20.0f

    return p1

    :cond_1
    const/high16 v0, 0x41d80000    # 27.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const/high16 p1, 0x41c00000    # 24.0f

    return p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resizeFontSizeForCanvas# unexpected size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocXConverter$TextConverter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private updateAlignmentByText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;I)Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->isChanged()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/engine/util/SpenEngineUtil;->isRTL(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setAlignment(I)V

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->clearChangedFlag()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    :cond_2
    :goto_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 5

    const-string v0, "SDocXConverter$TextConverter"

    const-string v1, "convert content"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    const/16 v1, 0x7530

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyBasic(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyParsingState(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->resizeFontSizeBySystem(F)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->getSpan()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->getSpan()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->getSpan()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->getSpan()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getFontSize()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    :cond_2
    move v3, v2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyAlignment(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copySpans(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->copyTaskStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    const-string p1, "end convert."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/TextConverter;->mNoteComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    return-void
.end method
