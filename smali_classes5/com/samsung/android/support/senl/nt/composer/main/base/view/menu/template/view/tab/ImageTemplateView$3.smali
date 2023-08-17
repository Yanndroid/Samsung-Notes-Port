.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->initPageToChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_left:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_right:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_both:I

    if-ne p1, v1, :cond_3

    const/4 v0, 0x3

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;->setPageToChange(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)V

    return-void
.end method
