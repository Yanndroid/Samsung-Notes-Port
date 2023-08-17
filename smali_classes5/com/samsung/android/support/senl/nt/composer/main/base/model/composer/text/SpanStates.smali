.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    }
.end annotation


# instance fields
.field public bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

.field public bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

.field public bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

.field private contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

.field public fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

.field public fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

.field public indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

.field public italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

.field public strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

.field public task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

.field public textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

.field public textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

.field public underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;Ld4/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)V

    return-void
.end method

.method private getBodyTextAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-object v0
.end method

.method private getBodyTextFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-object v0
.end method

.method private getTextBoxAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-object v0
.end method

.method private getTextBoxFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    return-void
.end method

.method public getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;->isSelectedBodyText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-object v0
.end method

.method public getBold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    return-object v0
.end method

.method public getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    return-object v0
.end method

.method public getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    return-object v0
.end method

.method public getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;->isSelectedBodyText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-object v0
.end method

.method public getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    return-object v0
.end method

.method public getItalic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    return-object v0
.end method

.method public getShapeStyleSpanState(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getStrikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getUnderline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getItalic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getBold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStrikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    return-object v0
.end method

.method public getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    return-object v0
.end method

.method public getUnderline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    return-object v0
.end method

.method public resetToDefault()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getUnderline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getStrikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getItalic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getBold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->reset()V

    return-void
.end method

.method public setBodyTextAlign(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-void
.end method

.method public setBodyTextFontSize(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-void
.end method

.method public setBold(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    return-void
.end method

.method public setFontBgColor(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    return-void
.end method

.method public setFontColor(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    return-void
.end method

.method public setIndent(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    return-void
.end method

.method public setItalic(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    return-void
.end method

.method public setStrikethrough(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    return-void
.end method

.method public setTask(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    return-void
.end method

.method public setTextBoxAlign(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-void
.end method

.method public setTextBoxFontSize(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-void
.end method

.method public setUnderline(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    return-void
.end method
