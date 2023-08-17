.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onResume(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->setSpanCount()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V

    :cond_2
    :goto_0
    return-void
.end method
