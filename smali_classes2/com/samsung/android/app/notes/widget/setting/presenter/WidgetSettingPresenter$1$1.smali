.class Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->onCacheCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;->this$1:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;->this$1:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;

    iget-object v1, v1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->d(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;->this$1:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updatePreviewAndSetting()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;->this$1:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->d(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->e(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
