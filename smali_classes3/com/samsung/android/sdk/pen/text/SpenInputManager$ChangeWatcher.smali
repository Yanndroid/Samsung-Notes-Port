.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/text/SpenInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mBeforeText:Ljava/lang/CharSequence;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;-><init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->setDeletedSurroundingTextLength(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;III)V

    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 4

    const-string p1, ", end : "

    const-string v0, "onSpanAdded() start : "

    const-string v1, "SpenInputManager"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", what : null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", what : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of p1, p2, Landroid/text/style/UnderlineSpan;

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanStart()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanEnd()I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    if-ne p2, p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->hasComposingSpan(II)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    new-instance p3, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingSpan;

    invoke-direct {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingSpan;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {p3, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingSpan;->setComposingStyleEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_3
    instance-of p1, p2, Landroid/text/style/SuggestionSpan;

    if-eqz p1, :cond_6

    check-cast p2, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Landroid/text/style/SuggestionSpan;)I

    move-result v1

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2302(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)I

    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;-><init>()V

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p3, 0x2

    invoke-virtual {v2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setUnderlineColor(I)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setSuggestionType(I)V

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setSuggestions(Ljava/util/ArrayList;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_6
    instance-of p1, p2, Landroid/text/style/BackgroundColorSpan;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingBackgroundColorSpan;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingBackgroundColorSpan;-><init>()V

    check-cast p2, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingBackgroundColorSpan;->setColor(I)V

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/sdk/pen/engine/util/SpenEngineUtil;->getNewCursorPosition(Landroid/text/Spannable;Ljava/lang/Object;IIII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onSpanChanged() newCursorPos : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cursorPos : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenInputManager"

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpanRemoved() start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p2, Landroid/text/style/BackgroundColorSpan;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const p2, 0x8000

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z

    goto :goto_0

    :cond_0
    instance-of p1, p2, Landroid/text/style/SuggestionSpan;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1, p3, p4}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const-string v0, "SpenInputManager"

    if-ne p3, p4, :cond_0

    if-nez p4, :cond_0

    :try_start_0
    const-string p1, "onTextChanged - There\'s no change. Skip!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getSurroundingTextLength()I

    move-result v1

    add-int v2, p2, p4

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "onTextChanged - reject change!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3, v4}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3, p2, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextChanged surroundingTextLength : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanStart()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextComposition(II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, p2, p3, v1, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->sendAccessibilityEventTypeViewTextChanged(Landroid/view/View;Ljava/lang/CharSequence;III)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
