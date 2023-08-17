.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->updatePagerHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->getLayoutHeight(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
