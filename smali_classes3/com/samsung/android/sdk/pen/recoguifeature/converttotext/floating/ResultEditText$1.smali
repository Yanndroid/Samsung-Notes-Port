.class Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;->onChanged(I)V

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x32

    const-string v5, ")"

    const-string v6, "ResultEditText"

    const/4 v7, 0x1

    if-le v4, v3, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1, v7}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$402(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultEditText.afterTextChanged Overflow (BEFORE lineCount : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultEditText.afterTextChanged Overflow (AFTER lineCount : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;->onOverflow(Z)V

    goto :goto_3

    :cond_5
    const/16 v0, 0xbb8

    if-le v1, v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v3, v7}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$402(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Z)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultEditText.afterTextChanged Overflow (BEFORE length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$200(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)I

    move-result v1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    if-le v1, v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingTextResult.afterTextChanged Overflow (AFTER length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;->onOverflow(Z)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$402(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$202(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;I)I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$002(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$102(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;I)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    add-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->access$202(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;I)I

    return-void
.end method
