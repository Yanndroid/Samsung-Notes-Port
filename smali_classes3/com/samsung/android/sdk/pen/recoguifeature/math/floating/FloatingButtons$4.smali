.class Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "FloatingButtons"

    const-string v0, "FloatingButtons::onClick() Close btn clicked."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;->onClose()V

    :cond_0
    return-void
.end method
