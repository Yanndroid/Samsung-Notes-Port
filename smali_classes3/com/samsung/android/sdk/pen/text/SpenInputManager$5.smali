.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/text/SpenInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTextComposingState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextComposingState(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBeginBatchEdit()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getBatchEditNesting()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const-string v2, "SpenInputManager"

    const-string v3, "onBeginBatchEdit - setEditingByUser to true"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setEditingByUser(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->setTextComposingState(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2102(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2102(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->setTextComposingState(I)V

    :cond_1
    return v1
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;->onHighlightSuggestion(IIII)V

    :cond_0
    return-void
.end method

.method public onCommitText(Ljava/lang/CharSequence;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const v1, 0x18000

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCommitText, start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpenInputManager"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isEnter(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDeleteSurroundingText(III)Z
    .locals 3

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1602(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    sub-int p1, p2, p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v1

    if-eq v1, p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteSurroundingText() backupSpanList size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenInputManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText() backupSpanList start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", spanType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onEndBatchEdit()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getBatchEditNesting()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const-string v2, "SpenInputManager"

    const-string v3, "onEndBatchEdit - setEditingByUser to false"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setEditingByUser(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->setTextComposingState(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2102(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->updateSelection(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onFinishComposingText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const v1, 0x18000

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;I)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$2002(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)Z

    return-void
.end method

.method public onPerformContextMenuAction(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPerformContextMenuAction() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;->onPerformContextMenuAction(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onSetSelection(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetSelection() : start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;->onSetSelection(II)V

    :cond_1
    if-ltz p2, :cond_2

    if-ne p1, p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$5;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "onSetSelection() : IllegalArgumentException."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
