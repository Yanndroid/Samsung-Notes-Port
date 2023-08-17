.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertCallback"
.end annotation


# instance fields
.field private mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    return-void
.end method

.method private onFinish()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showConvertProgressDialog()V

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->onFinish()V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->onFinish()V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->hasMultipleUuids()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;->onRequestOpenNote(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;->onFinish()V

    return-void
.end method
