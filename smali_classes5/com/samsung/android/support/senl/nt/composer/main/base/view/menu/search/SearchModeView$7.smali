.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->initSearchViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->enableComposerFocusableInTouchMode()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->hideSoftInput(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->disableComposerFocusableInTouchMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->stopActionMode()V

    :cond_1
    :goto_0
    return-void
.end method
