.class Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->access$102(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;I)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;->this$1:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/EditText;->setSelection(II)V

    :goto_0
    return-void
.end method
