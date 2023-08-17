.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;",
        "onDensityChanged",
        "",
        "density",
        "",
        "onOpacityChanged",
        "color",
        "onPenChanged",
        "penName",
        "",
        "onSizeChanged",
        "size",
        "",
        "sizeLevel",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDensityChanged(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDensityChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setSize(I)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onSeekBarChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpacityChanged(I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpacityChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setAlpha(I)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getAlpha()F

    move-result v2

    const/16 v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onSeekBarChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPenChanged(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSizeChanged(FI)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setSize(I)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onSeekBarChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
