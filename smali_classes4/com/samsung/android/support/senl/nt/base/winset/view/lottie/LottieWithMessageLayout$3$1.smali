.class Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
