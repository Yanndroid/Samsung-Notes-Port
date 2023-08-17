.class public final Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "onUpdate",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x12d

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v1, :cond_9

    const/16 v1, 0x12e

    if-eq p1, v1, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v0

    :goto_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getSize()I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OBSV_PEN_MODEL_SIZE_CHANGED - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OBSV_PEN_MODEL_SELECTION_CHANGED - receive"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    goto :goto_6

    :cond_a
    move-object p1, v0

    :goto_6
    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v1

    goto :goto_7

    :cond_b
    move-object v1, v0

    :goto_7
    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$updatePenModel(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMBrushModelListener$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;->notifyPenSelectionChange()V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Smudge"

    invoke-static {p1, v1, v4, v3, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMBrushPrevPenModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_e
    move-object p1, v0

    :goto_8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v1, v4, v3, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    :cond_f
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$setMBrushPrevPenModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMBrushPrevPenModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->changeMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$setMIsPenChanged$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Z)V

    :cond_12
    :goto_9
    return-void
.end method
