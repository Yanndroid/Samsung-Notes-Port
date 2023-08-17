.class public Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopup;
.implements Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushSettingPopupView;
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$PopupResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopup;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushSettingPopupView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        ">;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 Z2\u00020\u00012\u00020\u00022\u00020\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u00020\u0006:\u0002Z[B\u0011\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u001b\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cB#\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fB+\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0011J\u0008\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u0002042\u0006\u00106\u001a\u00020\u000eH\u0016J\u0008\u00107\u001a\u000204H\u0002J\u0012\u00108\u001a\u0002042\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J(\u0010;\u001a\u0002042\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\u000eH\u0014J\u0012\u0010@\u001a\u0002042\u0008\u0010A\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010B\u001a\u000204H\u0002J\u0012\u0010C\u001a\u0002042\u0008\u0010D\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010E\u001a\u0002042\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0016J\u0012\u0010H\u001a\u0002042\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0008\u0010K\u001a\u000204H\u0002J\u0012\u0010L\u001a\u0002042\u0008\u0010M\u001a\u0004\u0018\u00010+H\u0016J\u0008\u0010N\u001a\u000204H\u0002J\u0008\u0010O\u001a\u000204H\u0002J\u0008\u0010P\u001a\u000204H\u0002J\u0008\u0010Q\u001a\u000204H\u0002J\u0008\u0010R\u001a\u000204H\u0002J\u001a\u0010S\u001a\u0002042\u0006\u00106\u001a\u00020\u000e2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u0012\u0010V\u001a\u0002042\u0008\u0010W\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010X\u001a\u0002042\u0006\u0010Y\u001a\u00020\u000eH\u0002R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010,\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0016\u0010/\u001a\u0004\u0018\u0001008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;",
        "Landroid/widget/RelativeLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopup;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushSettingPopupView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "mBrushLayoutViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "mBrushMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mChangeListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;",
        "mColorPickerCallback",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "mColorPickerViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;",
        "mColorView",
        "Landroid/view/View;",
        "mColorViewID",
        "mEraserBottomListener",
        "Landroid/view/View$OnClickListener;",
        "mPenView",
        "mPenViewID",
        "mPopupViewMap",
        "Ljava/util/HashMap;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "mRotationDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "mScreenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "mSettingsViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;",
        "penSettingPopup",
        "getPenSettingPopup",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;",
        "removerSettingPopup",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;",
        "getRemoverSettingPopup",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;",
        "close",
        "",
        "hidePopup",
        "mode",
        "initialize",
        "onRotationChanged",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setChangeListener",
        "listener",
        "setColorRect",
        "setLayoutViewModel",
        "layoutViewModel",
        "setMainViewModel",
        "mainViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;",
        "setMenuHideViewModel",
        "menuHideViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        "setPenRect",
        "setSettingsViewModel",
        "settingsViewModel",
        "showColorGradation",
        "showColorPaletteSetting",
        "showColorPicker",
        "showEraserSetting",
        "showPenSetting",
        "showPopup",
        "data",
        "",
        "updateMenuInfo",
        "info",
        "updateSettingPopupPosition",
        "penPopupAlign",
        "Companion",
        "PopupResult",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mChangeListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorViewID:I

.field private mEraserBottomListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenViewID:I

.field private final mPopupViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$Companion;

    const-string v0, "BrushSettingPopup"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->setChangeListener$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMColorPickerViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMPopupViewMap$p(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private final initialize()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->popup_pen_view:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenViewID:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->popup_color_view:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorViewID:I

    return-void
.end method

.method private static final setChangeListener$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mChangeListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;->onClearAll()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->onEraseAllClick()V

    :cond_1
    return-void
.end method

.method private final setColorRect()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setColorRect() rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " align="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorView:Landroid/view/View;

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorViewID:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorView:Landroid/view/View;

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->getMenuViewParams(IZLandroid/graphics/Rect;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->getMenuViewParams(IZLandroid/graphics/Rect;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getPenPopupAlign()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->updateSettingPopupPosition(I)V

    :cond_3
    return-void
.end method

.method private final setPenRect()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPenRect() rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " align="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenView:Landroid/view/View;

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenViewID:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenView:Landroid/view/View;

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->getMenuViewParams(IZLandroid/graphics/Rect;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->getMenuViewParams(IZLandroid/graphics/Rect;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getPenPopupAlign()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->updateSettingPopupPosition(I)V

    :cond_3
    return-void
.end method

.method private final showColorGradation()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showColorGradationSetting."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getViewMode()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getCurrentColor()[F

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;-><init>(Landroid/content/Context;I[F)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;->hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getViewMode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->setViewMode(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getCurrentColor()[F

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->setCurrentColor([F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getRecentColors()[F

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getRecentColorsNum()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->setRecentColors([FI)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->setOnCloseClickListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->getActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->setPickerChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorGradationPopupView;->show()V

    return-void
.end method

.method private final showColorPaletteSetting()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPaletteSetting."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getMaxPaletteIndices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getMaxPaletteSelectable()I

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getPaletteSettingListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->setEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getPaletteSettingListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->setOnCloseClickListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->setShowToast(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getPaletteSettingListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->setToastTextNotifyListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedPalettes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->setSelectPaletteList(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->show()V

    return-void
.end method

.method private final showColorPicker()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showColorPicker."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->getColorPickerViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/samsung/android/support/senl/addons/R$dimen;->color_spoid_default_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v1, v4}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;II)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->hide()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->getColorPickerActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setSpoidListener(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->getPickerColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->show()V

    return-void
.end method

.method private final showEraserSetting()V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showEraserSetting."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getEraserActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6, v5}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mEraserBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->setBottomClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->show()V

    return-void
.end method

.method private final showPenSetting()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPenSetting no pen selected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showPenSetting"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getPenPopupAlign()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getPenActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;

    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->show()V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onBrushSettingOpen(Ljava/lang/String;)V

    return-void
.end method

.method private final updateSettingPopupPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mPopupViewMap.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mPopupViewMap.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPenView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->removeRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    :cond_1
    return-void
.end method

.method public getPenSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;

    return-object v0
.end method

.method public getRemoverSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IRemoverSettingPopup;

    return-object v0
.end method

.method public hidePopup(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePopup. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$PopupResult;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$PopupResult;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView;->hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$PopupResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->setColorGradationColor([F)V

    :cond_2
    return-void
.end method

.method public onRotationChanged(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mRotationDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setRotationEvent(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mPopupViewMap.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationView;->rotate(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getPenPopupAlign()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->updateSettingPopupPosition(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mPopupViewMap:Ljava/util/HashMap;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    instance-of p2, p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setRotation()V

    :cond_2
    return-void
.end method

.method public setChangeListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mChangeListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mEraserBottomListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLayoutViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLayoutViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->addRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    :cond_1
    return-void
.end method

.method public setMainViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setMainViewModel"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMenuHideViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setSettingsViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSettingsViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->getColorPickerViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mColorPickerCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    return-void
.end method

.method public showPopup(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p2, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPopup. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "recreate"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->showColorPaletteSetting()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->showColorPicker()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->showColorGradation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->showEraserSetting()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->showPenSetting()V

    :goto_0
    return-void
.end method

.method public updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMenuInfo. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " // "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->setPenRect()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->setColorRect()V

    :cond_0
    return-void
.end method
