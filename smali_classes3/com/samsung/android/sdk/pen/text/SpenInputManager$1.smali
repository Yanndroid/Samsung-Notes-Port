.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectAdded(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onObjectChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->object:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz p1, :cond_9

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    check-cast p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->textChangedType:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$200(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$300(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isCoediting()Z

    move-result v0

    if-eq p3, v1, :cond_4

    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object p3

    if-nez p3, :cond_8

    return-void

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3, v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$700(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$800(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$600(Lcom/samsung/android/sdk/pen/text/SpenInputManager;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_9

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    if-eq p1, p2, :cond_9

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$1;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p2, p1, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onObjectRemoved(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
