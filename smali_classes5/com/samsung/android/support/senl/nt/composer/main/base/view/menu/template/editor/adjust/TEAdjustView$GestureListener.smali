.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$GestureListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->onFling(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
