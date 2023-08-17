.class public final Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/binding/binder/IBindingFactory;
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/common/IBrushVMCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushDoneButtonSizeBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushMenuHideAnimationBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableWithoutEnableTintBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$DesktopModeEnableBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushPreviewBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomTextPositionBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomMenuPositionBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MainViewModelBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$SettingViewModelBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$EraserSelectionBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuInfoBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushSettingPopupListenerBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PenupListenerBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PreviewImageViewModelBinding;,
        Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PanningBarListenerBinding;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0018\u0000 \u00102\u00020\u00012\u00020\u0002:\u0013\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBindingFactory;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/common/IBrushVMCommand;",
        "()V",
        "createBinding",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "bind",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "holder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "property",
        "",
        "BrushDoneButtonSizeBinding",
        "BrushMenuHideAnimationBinding",
        "BrushPreviewBinding",
        "BrushSettingPopupListenerBinding",
        "Companion",
        "DesktopModeEnableBinding",
        "EraserSelectionBinding",
        "ImageButtonEnableBinding",
        "ImageButtonEnableWithoutEnableTintBinding",
        "LayoutViewModelBinding",
        "MainViewModelBinding",
        "MenuHideViewModelBinding",
        "MenuInfoBinding",
        "PanningBarListenerBinding",
        "PenupListenerBinding",
        "PreviewImageViewModelBinding",
        "SettingViewModelBinding",
        "ZoomMenuPositionBinding",
        "ZoomTextPositionBinding",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->Companion:Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$Companion;

    const-string v0, "BrushBindingFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final createBinding(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBinding. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "md_brush_panningbarListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PanningBarListenerBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PanningBarListenerBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "md_brush_eraserSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$EraserSelectionBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$EraserSelectionBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ad_brush_zoomTextPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomTextPositionBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomTextPositionBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "md_brush_menuHideVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "ad_brush_menuHideAnimation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushMenuHideAnimationBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushMenuHideAnimationBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "ad_brush_imageEnable_without_enable_tint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableWithoutEnableTintBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableWithoutEnableTintBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "md_brush_penupListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PenupListenerBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PenupListenerBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "ad_brush_zoomMenuPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomMenuPositionBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ZoomMenuPositionBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "md_brush_mainVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MainViewModelBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MainViewModelBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "ad_brush_imageEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$ImageButtonEnableBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "md_brush_settingPopupListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushSettingPopupListenerBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushSettingPopupListenerBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "md_brush_menuInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuInfoBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuInfoBinding;-><init>()V

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "ad_brush_desktopModeEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$DesktopModeEnableBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$DesktopModeEnableBinding;-><init>()V

    goto :goto_1

    :sswitch_d
    const-string v0, "ad_brush_doneButtonSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushDoneButtonSizeBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushDoneButtonSizeBinding;-><init>()V

    goto :goto_1

    :sswitch_e
    const-string v0, "md_brush_settingVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$SettingViewModelBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$SettingViewModelBinding;-><init>()V

    goto :goto_1

    :sswitch_f
    const-string v0, "md_brush_layoutVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;-><init>()V

    goto :goto_1

    :sswitch_10
    const-string v0, "md_brush_previewImageVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PreviewImageViewModelBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$PreviewImageViewModelBinding;-><init>()V

    goto :goto_1

    :sswitch_11
    const-string v0, "ad_brush_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushPreviewBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$BrushPreviewBinding;-><init>()V

    goto :goto_1

    :cond_12
    :goto_0
    new-instance p1, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;-><init>()V

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x628a5359 -> :sswitch_11
        -0x5d895649 -> :sswitch_10
        -0x27d46192 -> :sswitch_f
        -0x25f69466 -> :sswitch_e
        -0x1b851a4a -> :sswitch_d
        -0x18e439f -> :sswitch_c
        0x120e1ba -> :sswitch_b
        0x17fa09d -> :sswitch_a
        0x12784c1d -> :sswitch_9
        0x1448a07d -> :sswitch_8
        0x21f4591c -> :sswitch_7
        0x24cf775b -> :sswitch_6
        0x25a1fc1e -> :sswitch_5
        0x26f2b362 -> :sswitch_4
        0x3a730985 -> :sswitch_3
        0x4e69daea -> :sswitch_2
        0x67b518b3 -> :sswitch_1
        0x7ca60143 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->createBinding(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;->getPropertyId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->isPendingExecutable()Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->createBinding(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->setExecuteType(I)V

    :cond_1
    return-object v0
.end method
