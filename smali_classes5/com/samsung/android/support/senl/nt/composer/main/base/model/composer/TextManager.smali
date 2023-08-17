.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ParagraphTypes;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final PHONE_DEVICE_DEFAULT_FONT_SIZE_DELTA:I = 0x0

.field private static final TABLET_DEVICE_DEFAULT_FONT_SIZE_DELTA:I = -0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field private mDefaultFontSizeDelta:I

.field private mFontSizeDelta:Ljava/lang/Integer;

.field private mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

.field private mRTL:Ljava/lang/Boolean;

.field private mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

.field private mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

.field private mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

.field private mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

.field private mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

.field private mTitleUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mFontSizeDelta:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->onChangedParagraph(II)V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private defaultSpanStatesBuilder(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getFontSizeDelta()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontSize(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontColor(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->fontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->bold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->italic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->underline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->strikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->task()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->indent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->align()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    return-object p1
.end method

.method private getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I

    move-result-object p1

    return-object p1
.end method

.method private initRTL()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRTL:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRTL:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private initRtChecker()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    :cond_0
    return-void
.end method

.method private isInvalidFontSizeDelta()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mFontSizeDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onChangedParagraph(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->initRtChecker()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I

    move-result-object v0

    aget v1, v0, v3

    aget v4, v0, v2

    sub-int/2addr v1, v4

    if-le v1, v3, :cond_1

    aget v1, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    if-lt v1, p1, :cond_3

    if-le v1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->checkSingleParagraphTask(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;->update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setTitle(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    :cond_0
    return-void
.end method

.method private updateParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->initRTL()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->initRtChecker()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I

    move-result-object p3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    aget v3, p3, v2

    aget p3, p3, p2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRTL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, p1, v3, p3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->checkParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;III)[I

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object p3

    aget v1, p1, v2

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->setValue(I)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object p3

    aget p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->setValue(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object p2

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->setValue(I)V

    return-void
.end method


# virtual methods
.method public clearRtState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;->update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    :cond_0
    return-void
.end method

.method public clearSelection()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :cond_0
    return-void
.end method

.method public getCurrentViewFontSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getViewValue()I

    move-result v0

    return v0
.end method

.method public getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCursorFromFocusedTextBox()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    return-object v0
.end method

.method public getCursorIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getCurosrIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method

.method public getCursorIndexToInsertIntoBodyText(Landroid/graphics/PointF;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->getCursorIndexToInsertIntoBodyText(Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method

.method public getCursorRectOnScreenCoordinates(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getCursorRectOnScreenCoordinates(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultFontColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getDefaultValue()I

    move-result v0

    return v0
.end method

.method public getFontSizeDelta()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isInvalidFontSizeDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getTextSizeDelta()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mFontSizeDelta:Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isInvalidFontSizeDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mDefaultFontSizeDelta:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mFontSizeDelta:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v0

    return-object v0
.end method

.method public getLastTextState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    return-object v0
.end method

.method public getLineCountFromBodyTextBottom(Landroid/graphics/PointF;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->getLineCountFromBodyTextBottom(Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method

.method public getLineRectOfBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->getLineRectOfBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v2, v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->subString(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenNoteTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    return-object v0
.end method

.method public getSpenObjectListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/b;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    return-object v0
.end method

.method public getTextBgColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->getValue()I

    move-result v0

    return v0
.end method

.method public getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getValue()I

    move-result v0

    return v0
.end method

.method public getTextLengthByEmptyBodyTextPage(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
    .locals 1
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->calculateInsertedTextCountWhenInsertEmptyBodyTextTo(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I

    move-result p1

    return p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addSkipFileLog(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setTitle(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz p6, :cond_0

    const/4 p1, -0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mDefaultFontSizeDelta:I

    invoke-direct {p0, p5, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->defaultSpanStatesBuilder(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$Builder;->build()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRTL:Ljava/lang/Boolean;

    return-void
.end method

.method public isAutoFocusEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->isAutoFocusEnabled()Z

    move-result v0

    return v0
.end method

.method public isCursorBlinking()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->isCursorBlinking()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    if-eq v2, v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public notifyToListener([I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget p1, p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextStateWithCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget v0, p1, v0

    aget p1, p1, v2

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextStateWithSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSelectedText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->removeText([I)V

    return-void
.end method

.method public removeSelectedText()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->removeSelectedText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    const/4 v0, 0x1

    return v0
.end method

.method public removeText([I)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    if-lt v1, v3, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeText# e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget v3, p1, v0

    aget v2, p1, v2

    aget v4, p1, v0

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    return-void
.end method

.method public setAlign(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->notifyToListener([I)V

    :cond_0
    return-void
.end method

.method public setAutoBlinkOffOnWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setAutoBlinkOffOnWindowFocusChanged(Z)V

    return-void
.end method

.method public setAutoScrollToCursorOnLayoutChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setAutoFocusEnabled(Z)V

    return-void
.end method

.method public setCursorBlink(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorBlink(Z)V

    return-void
.end method

.method public setFocusedTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    return-void
.end method

.method public setFontSize(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDeltaSize()I

    move-result v1

    sub-int v1, p1, v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFontSize : origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " delta : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDeltaSize()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fontSize : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setHintTextFontSize(F)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    return-void
.end method

.method public setSpenTextManager(Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    return-void
.end method

.method public setStyle(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getShapeStyleSpanState(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->setValue(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    return-void
.end method

.method public setTask(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->setValue(I)V

    :goto_0
    return-void
.end method

.method public setTextBgColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public setTextOnlyModeState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public setTitleUpdateListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTitleUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;

    return-void
.end method

.method public setTodoState(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 5

    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextParagraph(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v3

    if-gt v3, p2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->Checkout(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string p2, "401"

    const-string v0, "4040"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toggleStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getShapeStyleSpanState(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->toggleValue()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mCurFocusTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->notifyToListener([I)V

    return-void
.end method

.method public updateBodyObjectSpanPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpenTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->updateBodyObjectSpanPosition(II)V

    return-void
.end method

.method public updateRichTextState()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->notifyToListener([I)V

    return-void
.end method

.method public updateRichTextStateWithCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->initRtChecker()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->updateRtSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-direct {p0, p1, p2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;->update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    return-void
.end method

.method public updateRichTextStateWithSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->initRtChecker()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mRtChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->updateRtSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mSpanStates:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnCurrentTextStateListener;->update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    return-void
.end method

.method public updateTextOnlyMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->canUseTextOnlyMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setCanUseTextOnlyMode(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
