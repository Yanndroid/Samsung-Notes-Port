.class Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->createCacheInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$400(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->d(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v5

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$500(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isValidCacheFiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updatePreviewAndSetting()V

    goto :goto_0

    :cond_2
    const-string v0, "WidgetSettingPresenter"

    const-string v1, "createCacheInfo# create new cache"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$600(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isCreateWidgetState(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$700(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->f(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$800(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->val$uuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->c(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->b(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V

    :goto_0
    return-void
.end method
