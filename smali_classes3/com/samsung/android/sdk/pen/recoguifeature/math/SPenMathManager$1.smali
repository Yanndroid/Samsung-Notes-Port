.class Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setNativeHandle(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onConvert(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->updateFormulaText(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCopy(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetting()V
    .locals 0

    return-void
.end method
