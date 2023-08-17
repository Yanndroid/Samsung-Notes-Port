.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->watchZoomToDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoom(FFFFF)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;F)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)F

    move-result p1

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)V

    :cond_1
    return-void
.end method
