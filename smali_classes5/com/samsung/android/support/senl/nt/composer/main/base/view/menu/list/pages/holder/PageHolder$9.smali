.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->initCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageHolderLayout:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->isFittingOnlyWidth()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTranslationY(F)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageHolderLayout:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->isFittingOnlyHeight()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageHolderVariable:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    neg-int p2, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    :goto_0
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setTranslationX(F)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setTranslationY(F)V

    :goto_2
    return-void
.end method
