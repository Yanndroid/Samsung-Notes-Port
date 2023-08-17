.class Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->updateMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

.field public final synthetic val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

.field public final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->startRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->endRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget v3, v3, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->topRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method
