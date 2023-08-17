.class Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->updateLayout(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "FloatingMathEditor"

    const-string v0, "FloatingMathEditor::onClick() Copy btn clicked."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;->onCopy(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
