.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->initLockWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onViewAttachedToWindow# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)[Z

    move-result-object p1

    const/4 v0, 0x5

    aget-boolean p1, p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)[Z

    move-result-object p1

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
