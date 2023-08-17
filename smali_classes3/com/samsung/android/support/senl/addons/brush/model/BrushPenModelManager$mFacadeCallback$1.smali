.class public final Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;
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
        "com/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1",
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 4
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

    const/16 v1, 0x2afe

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    const/16 v1, 0x2b01

    if-eq p1, v1, :cond_9

    const/16 v1, 0x2c27

    if-eq p1, v1, :cond_2

    const/16 v0, 0x2c89

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$initialize(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_f

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getCurrentColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->hasAlpha()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setAlpha(F)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->setColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_7
    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBSV_PROPERTY_PEN_COLOR_CHANGED - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " /  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getAlphaColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setColorPickerColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    goto/16 :goto_4

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_a
    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(II)V

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$setMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isMode(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Smudge"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$addRecent(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updateSelectPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMIsPenChanged$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getCurrentPenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onObjectAdded(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$setMIsPenChanged$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Z)V

    :cond_f
    :goto_4
    return-void
.end method
