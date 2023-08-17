.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloaterGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    invoke-interface {v0, p3, p4, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->onFling(FFLjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->onLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->onScroll(Landroid/view/MotionEvent;FF)Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
