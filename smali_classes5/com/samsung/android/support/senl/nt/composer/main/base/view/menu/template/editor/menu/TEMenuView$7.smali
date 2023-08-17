.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->setOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0xd3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
