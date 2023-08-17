.class public Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleText;
.implements Lorg/apache/poi/java/awt/event/TextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TextComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTTextComponent"
.end annotation


# static fields
.field private static final NEXT:Z = true

.field private static final PREVIOUS:Z = false

.field private static final serialVersionUID:J = 0x32657080e8b29df3L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/TextComponent;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/TextComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/TextComponent;->addTextListener(Lorg/apache/poi/java/awt/event/TextListener;)V

    return-void
.end method

.method private findWordLimit(ILjava/text/BreakIterator;ZLjava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    :goto_0
    if-ne p3, v0, :cond_1

    :goto_1
    invoke-virtual {p2}, Ljava/text/BreakIterator;->next()I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/text/BreakIterator;->previous()I

    move-result v1

    :goto_2
    move v4, v1

    move v1, p1

    move p1, v4

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_4
    return v2
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->TEXT:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/TextComponent;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->EDITABLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    return-object v0
.end method

.method public getAccessibleText()Ljavax/accessibility/AccessibleText;
    .locals 0

    return-object p0
.end method

.method public getAfterIndex(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_b

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, -0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->following(I)I

    move-result p2

    if-eq p2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->findWordLimit(ILjava/text/BreakIterator;ZLjava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    if-eq v1, v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    add-int/lit8 p1, p2, 0x1

    iget-object v2, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_2
    return-object v0
.end method

.method public getAtIndex(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/BreakIterator;->following(I)I

    move-result p2

    invoke-virtual {v0}, Ljava/text/BreakIterator;->previous()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/BreakIterator;->following(I)I

    move-result p2

    invoke-virtual {v0}, Ljava/text/BreakIterator;->previous()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getBeforeIndex(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_8

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v2, :cond_6

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->following(I)I

    invoke-virtual {v1}, Ljava/text/BreakIterator;->previous()I

    move-result p2

    invoke-virtual {v1}, Ljava/text/BreakIterator;->previous()I

    move-result v1

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, p2, v1, v3, p1}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->findWordLimit(ILjava/text/BreakIterator;ZLjava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p2, :cond_7

    return-object v0

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    return-object v0
.end method

.method public getCaretPosition()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getCaretPosition()I

    move-result v0

    return v0
.end method

.method public getCharCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getCharacterAttribute(I)Ljavax/swing/text/AttributeSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharacterBounds(I)Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/TextComponent;->getCharacterBounds(I)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public getIndexAtPoint(Lorg/apache/poi/java/awt/Point;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/TextComponent;->getIndexAtPoint(Lorg/apache/poi/java/awt/Point;)I

    move-result p1

    return p1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/TextComponent;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public textValueChanged(Lorg/apache/poi/java/awt/event/TextEvent;)V
    .locals 2

    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->this$0:Lorg/apache/poi/java/awt/TextComponent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TextComponent;->getCaretPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "AccessibleText"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
