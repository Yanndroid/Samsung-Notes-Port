.class Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->updateLayout(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->getCursorIndex()I

    move-result v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->setCursorIndex(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$200(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$102(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    :goto_0
    return-void
.end method
