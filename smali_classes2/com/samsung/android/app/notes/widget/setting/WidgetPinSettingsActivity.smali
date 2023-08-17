.class public Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPinSettingsActivity"


# instance fields
.field private widgetSettingReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->widgetSettingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    return-object p0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_widget_setting_create_cache"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_widget_setting_done_cache"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_widget_setting_cancel_cache"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->widgetSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public createPresenter(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->init()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    instance-of v0, p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->createCacheInfo()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->registerReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->onDestroy()V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->widgetSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/BaseWidgetSettingActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    instance-of v1, v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updateEmptyPreview()V

    :cond_0
    return-void
.end method
