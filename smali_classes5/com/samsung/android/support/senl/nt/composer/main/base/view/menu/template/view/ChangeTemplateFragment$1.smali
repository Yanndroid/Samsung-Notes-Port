.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onTabSelected(I)V

    return-void
.end method
