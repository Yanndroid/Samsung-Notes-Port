.class public Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
.super Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification;
.implements Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/mode/IState;
.implements Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;,
        Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$PaletteSettingUpdateCmd;,
        Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;,
        Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;,
        Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0017\u0008\u0016\u0018\u0000 P2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0005OPQRSB\u000f\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020!H\u0016J\u0008\u0010#\u001a\u00020!H\u0016J\u0008\u0010$\u001a\u00020\nH\u0016J\u0006\u0010%\u001a\u00020\nJ\u0008\u0010&\u001a\u00020!H\u0016J\u0008\u0010\'\u001a\u00020!H\u0016J\u0008\u0010(\u001a\u00020!H\u0016J\u0008\u0010)\u001a\u00020\nH\u0016J\u0008\u0010*\u001a\u00020!H\u0016J\u0008\u0010+\u001a\u00020!H\u0016J\u0008\u0010,\u001a\u00020!H\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020\nH\u0016J\u0010\u0010/\u001a\u00020!2\u0006\u00100\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0010\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\nH\u0002J\u0010\u00104\u001a\u00020\u001a2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020\u001a2\u0006\u00108\u001a\u000206H\u0016J\u0006\u00109\u001a\u00020\u001aJ\u0006\u0010:\u001a\u00020\u001aJ\u0008\u0010;\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010=J\u0008\u0010>\u001a\u00020\u001aH\u0002J\u0010\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010A\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010B\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010D\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020\nH\u0016J\u0010\u0010E\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010F\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u0010\u0010G\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020!H\u0016J\u000e\u0010H\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u000cJ\u0016\u0010J\u001a\u00020\u001a2\u000e\u0010K\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000eJ\u0008\u0010L\u001a\u00020\u001aH\u0016J\u0006\u0010M\u001a\u00020\u001aJ\u0006\u0010N\u001a\u00020\u001aR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006T"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingPropertyNotification;",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IState;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISettingShow;",
        "handler",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V",
        "currentMode",
        "",
        "mHSV",
        "",
        "mPaletteList",
        "",
        "mPopupType",
        "mSettingsContentChangedCallback",
        "Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;",
        "mState",
        "prevMode",
        "state",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "addObserver",
        "",
        "observer",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "clearAllPopupVisibility",
        "clearPopupsExceptPen",
        "close",
        "getAttachSheetVisibility",
        "",
        "getColorGradationVisibility",
        "getColorPickerVisibility",
        "getCurrentMode",
        "getCurrentPopup",
        "getEraserSettingVisibility",
        "getPaletteSettingVisibility",
        "getPenSettingVisibility",
        "getPrevMode",
        "getSelectionSettingVisibility",
        "hasShown",
        "hideShowingPopup",
        "isMode",
        "mode",
        "isShowPopup",
        "type",
        "isState",
        "loadInstanceData",
        "data",
        "onLoadFromInstanceState",
        "inState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "recreateSetting",
        "registerSpenActivationObserver",
        "restoreHSV",
        "restorePaletteList",
        "",
        "sendCurrentPopupNotificationId",
        "setAttachSheetVisibility",
        "visibility",
        "setColorGradationVisibility",
        "setColorPickerVisibility",
        "setEraserSettingVisibility",
        "setMode",
        "setPaletteSettingVisibility",
        "setPenSettingVisibility",
        "setSelectionSettingVisibility",
        "storeHSV",
        "hsv",
        "storePaletteList",
        "list",
        "storeSettingPopupData",
        "unregisterSpenActivationObserver",
        "updateToolType",
        "ColorPickerSettingUpdateCmd",
        "Companion",
        "GradationSettingUpdateCmd",
        "PaletteSettingUpdateCmd",
        "SettingUpdateCmd",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SAVE_INSTANCE_KEY_CURRENT_MODE:Ljava/lang/String; = "current_mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SAVE_INSTANCE_KEY_POPUP:Ljava/lang/String; = "popup_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SAVE_INSTANCE_KEY_PREV_MODE:Ljava/lang/String; = "prev_mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentMode:I

.field private mHSV:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPaletteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPopupType:I

.field private mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mState:I

.field private prevMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$Companion;

    const-string v0, "SettingsModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->prevMode:I

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZLandroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->registerSpenActivationObserver$lambda-0(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZLandroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$clearPopupsExceptPen(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearPopupsExceptPen()V

    return-void
.end method

.method public static final synthetic access$getMHSV$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    return-object p0
.end method

.method public static final synthetic access$getMPaletteList$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMPopupType$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isShowPopup(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMHSV$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;[F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    return-void
.end method

.method public static final synthetic access$setMPaletteList$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setMPopupType$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    return-void
.end method

.method private final clearPopupsExceptPen()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorPickerVisibility(Z)V

    :cond_2
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPaletteSettingVisibility(Z)V

    :cond_3
    return-void
.end method

.method private final isShowPopup(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final loadInstanceData(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorPickerVisibility(Z)V

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setSelectionSettingVisibility(Z)V

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPaletteSettingVisibility(Z)V

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setAttachSheetVisibility(Z)V

    return-void
.end method

.method private static final registerSpenActivationObserver$lambda-0(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZLandroid/net/Uri;)V
    .locals 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSpenActivated()Z

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged, uri/isSpenActivated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->setSpenActivated(Z)V

    const/16 p1, 0x191

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private final sendCurrentPopupNotificationId()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1f8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x1f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x1f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0x1fb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    return-void
.end method

.method public addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->sendCurrentPopupNotificationId()V

    return-void
.end method

.method public bridge synthetic addObserver(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    return-void
.end method

.method public clearAllPopupVisibility()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    const-string v1, "clearAllPopupVisibility"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearPopupsExceptPen()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->close()V

    return-void
.end method

.method public getAttachSheetVisibility()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getColorGradationVisibility()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getColorPickerVisibility()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    return v0
.end method

.method public final getCurrentPopup()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    return v2

    :cond_3
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    return v2

    :cond_5
    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getEraserSettingVisibility()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getPaletteSettingVisibility()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getPenSettingVisibility()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getPrevMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->prevMode:I

    return v0
.end method

.method public getSelectionSettingVisibility()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mState:I

    return v0
.end method

.method public hasShown()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideShowingPopup()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBack(), popup is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    and-int/lit8 v2, v2, 0x7f

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setAttachSheetVisibility(Z)V

    return v1

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorPickerVisibility(Z)V

    return v1

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    return v1

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    return v1

    :cond_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    return v1

    :cond_4
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setSelectionSettingVisibility(Z)V

    return v1

    :cond_5
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPaletteSettingVisibility(Z)V

    return v1

    :cond_6
    return v2
.end method

.method public isMode(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isState(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mState:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLoadFromInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popup_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->loadInstanceData(I)V

    const-string v0, "prev_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->prevMode:I

    const-string v0, "current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPopupType:I

    const-string v1, "popup_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->prevMode:I

    const-string v1, "prev_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    const-string v1, "current_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final recreateSetting()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    const-string v1, "request recreate popup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final registerSpenActivationObserver()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isSpenModel()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    new-instance v1, Ls3/a;

    invoke-direct {v1, p0}, Ls3/a;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    const/4 v2, 0x0

    const-string v3, "pen_digitizer_enabled"

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->addSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;Ljava/lang/String;I)Z

    return-void
.end method

.method public final restoreHSV()[F
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreHSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    return-object v0
.end method

.method public final restorePaletteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePaletteList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    return-object v0
.end method

.method public setAttachSheetVisibility(Z)V
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;

    const/16 v3, 0x40

    const/16 v4, 0x1fb

    const-string v5, "Attach Sheet"

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setColorGradationVisibility(Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setColorPickerVisibility(Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$ColorPickerSettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setEraserSettingVisibility(Z)V
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;

    const/4 v3, 0x2

    const/16 v4, 0x1f6

    const-string v5, "Eraser Setting Popup"

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setMode(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    if-eq v0, p1, :cond_0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->prevMode:I

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->currentMode:I

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x192

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPaletteSettingVisibility(Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$PaletteSettingUpdateCmd;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$PaletteSettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setPenSettingVisibility(Z)V
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;

    const/4 v3, 0x1

    const/16 v4, 0x1f5

    const-string v5, "Pen Setting Popup"

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setSelectionSettingVisibility(Z)V
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;

    const/16 v3, 0x10

    const/16 v4, 0x1f7

    const-string v5, "Selection Setting Popup"

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->update()V

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mState:I

    const/16 p1, 0x1f4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final storeHSV([F)V
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hsv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storeHSV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mHSV:[F

    return-void
.end method

.method public final storePaletteList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storePaletteList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mPaletteList:Ljava/util/List;

    return-void
.end method

.method public storeSettingPopupData()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storeSettingPopupData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isShowPopup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "storeSettingPopupData - send notify"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final unregisterSpenActivationObserver()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isSpenModel()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->mSettingsContentChangedCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->removeSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;)Z

    return-void
.end method

.method public final updateToolType()V
    .locals 1

    const/16 v0, 0x193

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method
