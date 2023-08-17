.class Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheCreated()V
    .locals 2

    const-string v0, "WidgetSettingPresenter"

    const-string v1, "onCacheCreated# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$000(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$100(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$200(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->access$300(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
