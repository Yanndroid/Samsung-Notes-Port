.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;

.field public final synthetic val$floater:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;->val$floater:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener$1;->val$floater:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    return-void
.end method
