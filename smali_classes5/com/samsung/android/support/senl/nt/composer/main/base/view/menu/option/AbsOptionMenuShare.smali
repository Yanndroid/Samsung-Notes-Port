.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/AbsOptionMenuShare;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_more:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showPopupMenu# anchorView is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->clearPageDataList()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;Landroid/view/View;)V

    return-void
.end method
