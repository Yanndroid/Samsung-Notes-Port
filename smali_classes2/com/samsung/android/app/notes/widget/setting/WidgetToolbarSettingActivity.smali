.class public Lcom/samsung/android/app/notes/widget/setting/WidgetToolbarSettingActivity;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createPresenter(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;

    const v0, 0x7f0a08ee

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->init()V

    return-void
.end method
