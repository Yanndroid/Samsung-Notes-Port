.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->updateMoveState(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;Ljava/lang/Runnable;)V

    return-void
.end method
