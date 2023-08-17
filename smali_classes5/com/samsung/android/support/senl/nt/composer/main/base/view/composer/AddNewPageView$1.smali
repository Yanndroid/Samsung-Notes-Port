.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->init(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd4

    if-ne p1, p2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
