.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

.field private bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

.field private bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

.field private contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

.field private fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

.field private fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

.field private indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

.field private italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

.field private strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

.field private task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

.field private textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

.field private textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

.field private underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->contract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    return-object p0
.end method


# virtual methods
.method public align()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public align(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextAlign(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxAlign(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bodyTextAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-object p0
.end method

.method public bodyTextAlign(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;

    return-object p0
.end method

.method public bodyTextFontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-object p0
.end method

.method public bodyTextFontSize(II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    return-object p0
.end method

.method public bold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    return-object p0
.end method

.method public bold(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bold:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    return-object p0
.end method

.method public build()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;Ld4/a;)V

    return-object v0
.end method

.method public fontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    return-object p0
.end method

.method public fontBgColor(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontBgColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    return-object p0
.end method

.method public fontColor(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontColor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    return-object p0
.end method

.method public fontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextFontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxFontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    return-object p0
.end method

.method public fontSize(II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bodyTextFontSize(II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxFontSize(II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    return-object p0
.end method

.method public indent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    return-object p0
.end method

.method public indent(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->indent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    return-object p0
.end method

.method public italic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    return-object p0
.end method

.method public italic(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->italic:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    return-object p0
.end method

.method public strikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    return-object p0
.end method

.method public strikethrough(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->strikethrough:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    return-object p0
.end method

.method public task()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    return-object p0
.end method

.method public task(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    return-object p0
.end method

.method public textBoxAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-object p0
.end method

.method public textBoxAlign(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxAlign:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;

    return-object p0
.end method

.method public textBoxFontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-object p0
.end method

.method public textBoxFontSize(II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->textBoxFontSize:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    return-object p0
.end method

.method public underline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    return-object p0
.end method

.method public underline(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->underline:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    return-object p0
.end method
