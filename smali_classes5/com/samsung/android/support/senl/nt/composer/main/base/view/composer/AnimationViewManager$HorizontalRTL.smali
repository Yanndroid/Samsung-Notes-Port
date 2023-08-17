.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$HorizontalRTL;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Horizontal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizontalRTL"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$HorizontalRTL;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Horizontal;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V

    return-void
.end method


# virtual methods
.method public getX(F)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$HorizontalRTL;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$HorizontalRTL;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    neg-float p1, v0

    return p1
.end method
