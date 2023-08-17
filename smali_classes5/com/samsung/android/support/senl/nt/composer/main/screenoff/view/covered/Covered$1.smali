.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->init(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->isFullScreenWindow(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Landroid/view/View;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x200000

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->clearWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onStartAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
