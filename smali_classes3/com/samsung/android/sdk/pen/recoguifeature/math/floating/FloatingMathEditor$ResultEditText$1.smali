.class Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "FloatingMathEditor"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatingMathEditor::mTextView.afterTextChanged Overflow (BEFORE lineCount : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x31

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatingMathEditor::mResultEditText.afterTextChanged Overflow (AFTER lineCount : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v3, 0xbb8

    if-le v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FloatingMathEditor::mResultEditText.afterTextChanged Overflow (BEFORE length : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatingMathEditor::mResultEditText.afterTextChanged Overflow (AFTER length : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
