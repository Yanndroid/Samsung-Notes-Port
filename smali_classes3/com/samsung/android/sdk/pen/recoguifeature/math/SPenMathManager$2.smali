.class Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->cancelMath()Z

    return-void
.end method

.method public onConvert()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->convertToMath()Z

    return-void
.end method
