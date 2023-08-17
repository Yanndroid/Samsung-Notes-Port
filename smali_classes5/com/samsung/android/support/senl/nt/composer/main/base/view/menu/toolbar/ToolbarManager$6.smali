.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->makePreTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

.field public final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0xd3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xd4

    if-ne p1, p2, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V

    :cond_3
    return v0
.end method
