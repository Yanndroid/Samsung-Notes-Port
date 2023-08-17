.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    return-void
.end method

.method public onPreSubmit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;III)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanStart()I

    move-result p1

    if-gt p1, p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getComposingSpanEnd()I

    move-result p1

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$2;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$400(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V

    :cond_1
    return-void
.end method

.method public onRedo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    return-void
.end method

.method public onRedoable(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 0

    return-void
.end method

.method public onUndo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    return-void
.end method

.method public onUndoable(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 0

    return-void
.end method
