.class Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "FloatingTextResult"

    const-string v0, "FloatingTextResult::Extract Copy btn clicked."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$600(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$600(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->access$200(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;->onCopy(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
