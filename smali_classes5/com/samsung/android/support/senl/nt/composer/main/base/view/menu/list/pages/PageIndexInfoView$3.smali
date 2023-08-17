.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->showSoftInput(Landroid/view/View;)V

    return p2
.end method
