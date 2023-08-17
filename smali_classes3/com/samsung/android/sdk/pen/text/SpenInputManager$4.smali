.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommitContent() flags = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SpenInputManager"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    :cond_0
    return p3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$4;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1100(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
