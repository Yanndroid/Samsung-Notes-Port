.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->detectLongPressGesture(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

.field public final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dispatchLongPress(Landroid/view/MotionEvent;)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->d(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Landroid/graphics/PointF;)V

    return-void
.end method
