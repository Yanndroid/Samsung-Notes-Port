.class Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updatePreviewAndSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

.field public final synthetic val$blackTheme:Landroid/graphics/Bitmap;

.field public final synthetic val$uuid:Ljava/lang/String;

.field public final synthetic val$whiteTheme:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$whiteTheme:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$blackTheme:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->a(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$whiteTheme:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$blackTheme:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updatePreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->a(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->existVoiceRecording(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateTitleVoice(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->a(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateBgSettingMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->a(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->hideLoadingView()V

    return-void
.end method
