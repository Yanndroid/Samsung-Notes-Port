.class public final Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$HyperTextStyleSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$UnderlineStyleSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$ItalicStyleSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BoldStyleSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BackgroundColorSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$ForegroundColorSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$FontNameSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$FontSizeSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextDirectionSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BulletParagraphInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$LineSpacingParagraphInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$AlignParagraphInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$IndentLevelParagraphInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTH:I = 0x3

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final BORDER_TYPE_DOT:I = 0x3

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SHADOW:I = 0x2

.field public static final BORDER_TYPE_SQUARE:I = 0x1

.field public static final BULLET_TYPE_ALPHABET:I = 0x6

.field public static final BULLET_TYPE_ARROW:I = 0x1

.field public static final BULLET_TYPE_CHECKER:I = 0x2

.field public static final BULLET_TYPE_CIRCLED_DIGIT:I = 0x5

.field public static final BULLET_TYPE_DIAMOND:I = 0x3

.field public static final BULLET_TYPE_DIGIT:I = 0x4

.field public static final BULLET_TYPE_NONE:I = 0x0

.field public static final BULLET_TYPE_ROMAN_NUMERAL:I = 0x7

.field public static final BULLET_TYPE_SOLID_CIRCLE:I = 0x8

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final HYPER_TEXT_ADDRESS:I = 0x5

.field public static final HYPER_TEXT_DATE:I = 0x4

.field public static final HYPER_TEXT_EMAIL:I = 0x1

.field public static final HYPER_TEXT_TEL:I = 0x2

.field public static final HYPER_TEXT_UNKNOWN:I = 0x0

.field public static final HYPER_TEXT_URL:I = 0x3

.field public static final LINE_SPACING_PERCENT:I = 0x1

.field public static final LINE_SPACING_PIXEL:I = 0x0

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_MASK:I = 0x7

.field public static final STYLE_NONE:I = 0x0

.field public static final STYLE_UNDERLINE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init2(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    if-ltz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    if-gez v1, :cond_0

    :cond_1
    const/4 p1, 0x7

    const-string/jumbo p2, "startPos and endPos of TextSpanInfo should have positive value"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init3(ILjava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    if-ltz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    if-gez v1, :cond_0

    :cond_1
    const/4 p1, 0x7

    const-string/jumbo p2, "startPos and endPos of TextSpanInfo should have positive value"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    if-ltz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    if-gez v1, :cond_0

    :cond_1
    const/4 p1, 0x7

    const-string/jumbo p2, "startPos and endPos of TextSpanInfo should have positive value"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    if-ltz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    if-gez v1, :cond_0

    :cond_1
    const/4 p1, 0x7

    const-string/jumbo p2, "startPos and endPos of TextSpanInfo should have positive value"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native ObjectTextBox_appendParagraph(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)Z
.end method

.method private native ObjectTextBox_appendParagraphEx(ILcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)Z
.end method

.method private native ObjectTextBox_appendSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)Z
.end method

.method private native ObjectTextBox_appendSpanEx(ILcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z
.end method

.method private native ObjectTextBox_clearChangedFlag(I)V
.end method

.method private native ObjectTextBox_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native ObjectTextBox_enableReadOnly(IZ)Z
.end method

.method private native ObjectTextBox_findParagraphEx(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_findParagraphs(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_findSpanEx(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_findSpans(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_getAutoFitOption(I)I
.end method

.method private native ObjectTextBox_getBackgroundColor(I)I
.end method

.method private native ObjectTextBox_getBorderType(I)I
.end method

.method private native ObjectTextBox_getBottomMargin(I)F
.end method

.method private native ObjectTextBox_getBulletType(I)I
.end method

.method private native ObjectTextBox_getCursorPos(I)I
.end method

.method private native ObjectTextBox_getDrawnRect(I)Landroid/graphics/RectF;
.end method

.method private native ObjectTextBox_getEllipsisType(I)I
.end method

.method private native ObjectTextBox_getFont(I)Ljava/lang/String;
.end method

.method private native ObjectTextBox_getFontSize(I)F
.end method

.method private native ObjectTextBox_getGravity(I)I
.end method

.method private native ObjectTextBox_getHintText(I)Ljava/lang/String;
.end method

.method private native ObjectTextBox_getHintTextColor(I)I
.end method

.method private native ObjectTextBox_getHintTextFontSize(I)F
.end method

.method private native ObjectTextBox_getIMEActionType(I)I
.end method

.method private native ObjectTextBox_getLeftMargin(I)F
.end method

.method private native ObjectTextBox_getLineBorderColor(I)I
.end method

.method private native ObjectTextBox_getLineBorderWidth(I)F
.end method

.method private native ObjectTextBox_getParagraph(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_getParagraphEx(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_getRightMargin(I)F
.end method

.method private native ObjectTextBox_getSpan(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_getSpanEx(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectTextBox_getText(I)Ljava/lang/String;
.end method

.method private native ObjectTextBox_getTextAlignment(I)I
.end method

.method private native ObjectTextBox_getTextColor(I)I
.end method

.method private native ObjectTextBox_getTextDirection(I)I
.end method

.method private native ObjectTextBox_getTextIndentLevel(I)I
.end method

.method private native ObjectTextBox_getTextInputType(I)I
.end method

.method private native ObjectTextBox_getTextLineSpacing(I)F
.end method

.method private native ObjectTextBox_getTextLineSpacingType(I)I
.end method

.method private native ObjectTextBox_getTextStyle(I)I
.end method

.method private native ObjectTextBox_getTopMargin(I)F
.end method

.method private native ObjectTextBox_getVerticalPan(I)F
.end method

.method private native ObjectTextBox_init1(I)Z
.end method

.method private native ObjectTextBox_init2(ILjava/lang/String;)Z
.end method

.method private native ObjectTextBox_init3(ILjava/lang/String;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_init4(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_insertText(ILjava/lang/String;I)Z
.end method

.method private native ObjectTextBox_insertTextAtCursor(ILjava/lang/String;)Z
.end method

.method private native ObjectTextBox_isChanged(I)Z
.end method

.method private native ObjectTextBox_isHintTextVisiable(I)Z
.end method

.method private native ObjectTextBox_isReadOnly(I)Z
.end method

.method private native ObjectTextBox_isTextVisible(I)Z
.end method

.method private native ObjectTextBox_removeAllText(I)Z
.end method

.method private native ObjectTextBox_removeParagraph(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)Z
.end method

.method private native ObjectTextBox_removeParagraphEx(ILcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)Z
.end method

.method private native ObjectTextBox_removeSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)Z
.end method

.method private native ObjectTextBox_removeSpanEx(ILcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z
.end method

.method private native ObjectTextBox_removeText(III)Z
.end method

.method private native ObjectTextBox_replaceText(ILjava/lang/String;II)Z
.end method

.method private native ObjectTextBox_setAutoFitOption(II)Z
.end method

.method private native ObjectTextBox_setBackgroundColor(II)Z
.end method

.method private native ObjectTextBox_setBorderType(II)Z
.end method

.method private native ObjectTextBox_setBulletType(II)Z
.end method

.method private native ObjectTextBox_setCursorPos(II)Z
.end method

.method private native ObjectTextBox_setEllipsisType(II)Z
.end method

.method private native ObjectTextBox_setFont(ILjava/lang/String;)Z
.end method

.method private native ObjectTextBox_setFontSize(IF)Z
.end method

.method private native ObjectTextBox_setGravity(II)Z
.end method

.method private native ObjectTextBox_setHintText(ILjava/lang/String;)Z
.end method

.method private native ObjectTextBox_setHintTextColor(II)Z
.end method

.method private native ObjectTextBox_setHintTextFontSize(IF)Z
.end method

.method private native ObjectTextBox_setHintTextVisibility(IZ)Z
.end method

.method private native ObjectTextBox_setIMEActionType(II)Z
.end method

.method private static native ObjectTextBox_setInitialCursorPos(I)Z
.end method

.method private native ObjectTextBox_setLineBorderColor(II)Z
.end method

.method private native ObjectTextBox_setLineBorderWidth(IF)Z
.end method

.method private native ObjectTextBox_setMargin(IFFFF)Z
.end method

.method private native ObjectTextBox_setParagraph(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_setParagraphEx(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_setSpan(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_setSpanEx(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectTextBox_setText(ILjava/lang/String;)Z
.end method

.method private native ObjectTextBox_setTextAlignment(II)Z
.end method

.method private native ObjectTextBox_setTextColor(II)Z
.end method

.method private native ObjectTextBox_setTextDirection(II)Z
.end method

.method private native ObjectTextBox_setTextIndentLevel(II)Z
.end method

.method private native ObjectTextBox_setTextInputType(II)Z
.end method

.method private native ObjectTextBox_setTextLineSpacingInfo(IIF)Z
.end method

.method private native ObjectTextBox_setTextStyle(II)Z
.end method

.method private native ObjectTextBox_setTextVisibility(IZ)Z
.end method

.method private native ObjectTextBox_setVerticalPan(IF)Z
.end method

.method public static setInitialCursorPos(I)V
    .locals 2

    const-string v0, "E_INVALID_ARG"

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setInitialCursorPos(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenObjectTextBox("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_appendParagraph(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_appendSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_clearChangedFlag(I)V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findParagraphs(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_findParagraphs(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public findSpans(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_findSpans(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public getBorderType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getBorderType(I)I

    move-result v0

    return v0
.end method

.method public getBulletType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getBulletType(I)I

    move-result v0

    return v0
.end method

.method public getCursorPos()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getCursorPos(I)I

    move-result v0

    return v0
.end method

.method public getDrawnRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getDrawnRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getFont(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getFontSize(I)F

    move-result v0

    return v0
.end method

.method public getLineBorderColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getLineBorderColor(I)I

    move-result v0

    return v0
.end method

.method public getLineBorderWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getLineBorderWidth(I)F

    move-result v0

    return v0
.end method

.method public getParagraph()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getParagraph(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextAlignment(I)I

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextColor(I)I

    move-result v0

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextIndentLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextIndentLevel(I)I

    move-result v0

    return v0
.end method

.method public getTextLineSpacing()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextLineSpacing(I)F

    move-result v0

    return v0
.end method

.method public getTextLineSpacingType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextLineSpacingType(I)I

    move-result v0

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_getTextStyle(I)I

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public isReadOnlyEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_isReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public removeParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_removeParagraph(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_removeSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setBackgroundColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBorderType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setBorderType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBulletType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setBulletType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCursorPos(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setCursorPos(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setFont(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setFontSize(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLineBorderColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setLineBorderColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLineBorderWidth(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setLineBorderWidth(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setParagraph(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setParagraph(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setReadOnlyEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_enableReadOnly(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public setSpan(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    if-ltz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    if-gez v1, :cond_0

    :cond_1
    const/4 p1, 0x7

    const-string/jumbo v0, "startPos and endPos of TextSpanInfo should have positive value"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setSpan(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setTextAlignment(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setTextColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 0

    return-void
.end method

.method public setTextIndentLevel(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setTextIndentLevel(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextLineSpacingInfo(IF)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setTextLineSpacingInfo(IIF)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_3
    return-void
.end method

.method public setTextStyle(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "style is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setTextStyle(II)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setVereticalPan(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->ObjectTextBox_setVerticalPan(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
