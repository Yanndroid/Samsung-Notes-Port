.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectEventListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V

    return-void
.end method

.method private isContainWithFocusedCursor([I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    aget v3, v0, v1

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, p1, v2

    if-gt v3, v4, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isContainWithFocusedCursor# current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " focused: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    return v1
.end method

.method private isEqualWithFocusedCursor([I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    aget v3, v0, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, p1, v2

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEqualWithFocusedCursor# current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " focused: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    return v1
.end method

.method private notifyTitleChanges(Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->object:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$OnTitleUpdateListener;->onChangedTitle(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateTextOnlyMode()V

    return-void
.end method

.method public onObjectChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
    .locals 4

    iget p1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    instance-of p1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->notifyTitleChanges(Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;

    iget p1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->textChangedType:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ObjectEventListenerImpl#onObjectChanged# paragraph is changed index : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cnt: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " before: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->before:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget p3, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    add-int/2addr p2, p3

    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;II)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    const/4 v1, 0x2

    if-ne p1, v0, :cond_3

    new-array p1, v1, [I

    iget v2, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    aput v2, p1, p3

    iget v3, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    add-int/2addr v2, v3

    aput v2, p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->isEqualWithFocusedCursor([I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ObjectEventListenerImpl#onObjectChanged# TEXT is changed"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextState()V

    goto :goto_1

    :cond_3
    iget p1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->textChangedType:I

    if-ne p1, v1, :cond_4

    new-array p1, v1, [I

    iget v1, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    aput v1, p1, p3

    iget p2, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    add-int/2addr v1, p2

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager$ObjectEventListenerImpl;->isContainWithFocusedCursor([I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ObjectEventListenerImpl#onObjectChanged# SPAN is changed"

    goto :goto_0

    :cond_4
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
