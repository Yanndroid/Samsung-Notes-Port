.class public Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/color/IGradationColorModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008/\u0008\u0016\u0018\u0000 \\2\u00020\u00012\u00020\u0002:\u0001\\B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017J\u0010\u0010&\u001a\u00020$2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0017J\u0016\u0010(\u001a\u00020$2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\t0*H\u0016J\u0006\u0010+\u001a\u00020$J\u001a\u0010,\u001a\u00020$2\u0010\u0010-\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010.\u0018\u00010*H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J \u00100\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00172\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u0012H\u0002J\u0008\u00103\u001a\u00020\tH\u0016J\u0006\u00104\u001a\u00020\tJ\u0008\u00105\u001a\u00020\tH\u0016J\n\u00106\u001a\u0004\u0018\u00010\u0017H\u0016J\n\u00107\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u00108\u001a\u00020\tH\u0016J\u0008\u00109\u001a\u00020\tH\u0016J\u0008\u0010:\u001a\u00020\u000eH\u0016J\u0008\u0010;\u001a\u0004\u0018\u00010\u0017J\u0010\u0010<\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010*H\u0016J\u0008\u0010=\u001a\u00020\tH\u0016J\u0012\u0010>\u001a\u0004\u0018\u00010\u00152\u0006\u0010?\u001a\u00020\tH\u0016J\u0006\u0010@\u001a\u00020\tJ\n\u0010A\u001a\u0004\u0018\u00010\"H\u0016J\n\u0010B\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010C\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010*H\u0016J\u0006\u0010D\u001a\u00020\tJ\u0012\u0010E\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010*H\u0016J\u0008\u0010F\u001a\u00020\u0012H\u0016J\u0008\u0010G\u001a\u00020$H\u0016J\u0008\u0010H\u001a\u00020$H\u0016J\u0008\u0010I\u001a\u00020$H\u0002J\u0008\u0010J\u001a\u00020$H\u0002J\u0010\u0010K\u001a\u00020$2\u0006\u0010L\u001a\u00020\u000eH\u0016J\u0010\u0010M\u001a\u00020$2\u0006\u0010N\u001a\u00020\tH\u0016J\u0012\u0010O\u001a\u00020\u00122\u0008\u0010P\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010Q\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0017J\u0010\u0010R\u001a\u00020$2\u0006\u0010S\u001a\u00020\tH\u0016J\u0010\u0010T\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017H\u0002J\u0010\u0010U\u001a\u00020$2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0017J\u0018\u0010V\u001a\u00020$2\u0006\u0010P\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\tH\u0002J \u0010V\u001a\u00020$2\u0006\u0010P\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0012H\u0016J\u0018\u0010X\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00172\u0006\u00101\u001a\u00020\tH\u0016J\u0008\u0010Y\u001a\u00020$H\u0016J\u0010\u0010Z\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0017H\u0002J\u0010\u0010[\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IGradationColorModel;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "settingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V",
        "mActivatedPage",
        "",
        "mColorModelInjector",
        "mColorPaletteTableSize",
        "mColorPickerRecent",
        "",
        "",
        "mColorPickerViewMode",
        "mEnabledIndexList",
        "mIsSetByGradation",
        "",
        "mMainColorIsSelected",
        "mPalettes",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
        "mPickerColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "mSelectableMaxPalette",
        "mSelectedColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;",
        "mSelectedListener",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;",
        "mSelectedPage",
        "mSelectedPalette",
        "mSettingsModel",
        "mainColor",
        "recent",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;",
        "addRecentColor",
        "",
        "color",
        "changeMainColorModel",
        "colorModel",
        "changeSelectedPalette",
        "list",
        "",
        "close",
        "createModels",
        "tables",
        "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
        "createRecentModel",
        "findMatchedColor",
        "position",
        "isSkip",
        "getActivatedPage",
        "getColorGradationPosition",
        "getColorPalletSize",
        "getColorPickerColor",
        "getColorPickerRecent",
        "getColorPickerRecentNum",
        "getColorPickerViewMode",
        "getHSVColor",
        "getMainColor",
        "getMaxPaletteIndices",
        "getMaxPaletteSelectable",
        "getPalette",
        "index",
        "getPosition",
        "getRecent",
        "getSelectedColor",
        "getSelectedIndices",
        "getSelectedPage",
        "getSelectedPalettes",
        "isColorSetByGradation",
        "next",
        "prev",
        "releasePalettes",
        "releaseSelectedPage",
        "saveColorPickerRecentColor",
        "hsvColor",
        "setActivatedPage",
        "id",
        "setColor",
        "hsv",
        "setColorPickerColor",
        "setColorPickerViewMode",
        "viewMode",
        "setColorSelection",
        "setMainColorModel",
        "setSelectedColor",
        "isSetColor",
        "updateColorAndPosition",
        "updatePalette",
        "updatePosition",
        "updateSelectPosition",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mActivatedPage:I

.field private mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mColorPaletteTableSize:I

.field private mColorPickerRecent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mColorPickerViewMode:I

.field private mEnabledIndexList:Ljava/util/List;
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

.field private mIsSetByGradation:Z

.field private mMainColorIsSelected:Z

.field private mPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPickerColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSelectableMaxPalette:I

.field private mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mSelectedListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSelectedPage:I

.field private final mSelectedPalette:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$Companion;

    const-string v0, "ColorModelsManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    const v1, -0x19191a

    const/high16 v2, -0x100000

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerViewMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;->getPaletteDatum()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->createModels(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->createRecentModel(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->loadViewMode()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerViewMode:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->loadColorPickerRecentColor()Ljava/util/List;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.FloatArray>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    const/16 p1, 0x15

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPaletteTableSize:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectableMaxPalette:I

    return-void
.end method

.method public static final synthetic access$getMSelectedPage$p(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    return p0
.end method

.method public static final synthetic access$releaseSelectedPage(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releaseSelectedPage()V

    return-void
.end method

.method public static final synthetic access$setMSelectedPage$p(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    return-void
.end method

.method private final createModels(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v8, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget v7, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    move-object v2, v8

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;-><init>(I[I[Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget v3, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;

    invoke-virtual {v8, v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final createRecentModel(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->loadRecentColorSize()I

    move-result v3

    new-array v0, v3, [I

    new-array v9, v3, [I

    new-array v8, v3, [[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [F

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v10, v3, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object v1

    move-object v2, p1

    move-object v4, v0

    move-object v5, v9

    move-object v6, v8

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->loadRecentColor(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;I[I[I[[F[Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    const/4 v5, -0x1

    move-object v4, v1

    move-object v6, v0

    move-object v7, v8

    move-object v8, v10

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;-><init>(I[I[[F[Ljava/lang/String;[ILcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;)V

    return-void
.end method

.method private final findMatchedColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z
    .locals 6

    const/high16 v0, -0x100000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/high16 v2, 0x200000

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-virtual {v5, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->selectColorPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->TAG:Ljava/lang/String;

    const-string p2, "find Matched Color in Palette"

    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/high16 p3, 0x100000

    if-ne v0, p3, :cond_4

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->selectColorPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->TAG:Ljava/lang/String;

    const-string p2, "find Matched Color in Recent"

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->TAG:Ljava/lang/String;

    const-string p2, "not find Matched Color"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private final releasePalettes()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final releaseSelectedPage()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->releaseSelectedColor()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->releaseSelectedColor()V

    :cond_1
    return-void
.end method

.method private final setColorSelection(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releaseSelectedPage()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->findMatchedColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private final setSelectedColor([FI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FIZ)V

    return-void
.end method

.method private final updatePosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorPosition(I)I

    move-result v2

    const/high16 v3, 0x400000

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final addRecentColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->push(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_0
    return-void
.end method

.method public final changeMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mMainColorIsSelected:Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FI)V

    return-void
.end method

.method public changeSelectedPalette(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releasePalettes()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    return-void
.end method

.method public getActivatedPage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    return v0
.end method

.method public final getColorGradationPosition()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    const/high16 v2, 0x400000

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public getColorPalletSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColorPickerColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPickerColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPickerColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPickerColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    return-object v0
.end method

.method public getColorPickerRecent()[F
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v1, :cond_0

    mul-int/lit8 v5, v4, 0x3

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v6, v6, v3

    aput v6, v0, v5

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v7, v7, v2

    aput v7, v0, v6

    const/4 v6, 0x2

    add-int/2addr v5, v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    aget v6, v7, v6

    aput v6, v0, v5

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColorPickerRecentNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColorPickerViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerViewMode:I

    return v0
.end method

.method public getHSVColor()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getMainColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    return-object v0
.end method

.method public getMaxPaletteIndices()Ljava/util/List;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPaletteTableSize:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->getINFO_INDEX_ORDER_LIST()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxPaletteSelectable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectableMaxPalette:I

    return v0
.end method

.method public getPalette(I)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    return-object p1
.end method

.method public final getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    return v0
.end method

.method public getRecent()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    return-object v0
.end method

.method public getSelectedColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-object v0
.end method

.method public getSelectedIndices()Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    return-object v0
.end method

.method public final getSelectedPage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPage:I

    return v0
.end method

.method public getSelectedPalettes()Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    return-object v0
.end method

.method public isColorSetByGradation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    return v0
.end method

.method public next()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    :cond_0
    return-void
.end method

.method public prev()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    if-eqz v1, :cond_0

    if-gez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    :cond_0
    return-void
.end method

.method public saveColorPickerRecentColor([F)V
    .locals 6
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hsvColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v4, v3, v1

    aget v5, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget v5, v3, v4

    aget v4, p1, v4

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget v5, v3, v4

    aget v4, p1, v4

    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerRecent:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->saveColorPickerRecentColor(Ljava/util/List;)V

    return-void
.end method

.method public setActivatedPage(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-ne v3, p1, :cond_0

    iput v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    return-void

    :cond_1
    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mActivatedPage:I

    :cond_2
    return-void
.end method

.method public setColor([F)Z
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "try change color to null Color Model"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->setColor([F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FI)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releaseSelectedPage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->findMatchedColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v0, 0x400000

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->setPosition(I)V

    :cond_1
    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    return p1
.end method

.method public final setColorPickerColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPickerColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    const/16 p1, 0xcb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public setColorPickerViewMode(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerViewMode:I

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorPickerViewMode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->saveViewMode(I)V

    return-void
.end method

.method public final setMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mMainColorIsSelected:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releaseSelectedPage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result p1

    const/high16 v1, -0x100000

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updatePosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->setPosition(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v2

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->findMatchedColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result p1

    and-int/2addr p1, v1

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->setPosition(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FI)V

    const/16 p1, 0xca

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedColor([FIZ)V
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hsv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    array-length p3, p1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor([F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public updateColorAndPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->setColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->setPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FI)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->findMatchedColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mIsSetByGradation:Z

    :cond_1
    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public updatePalette()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->saveColorPalettes(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;->getColorTables(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->releasePalettes()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mPalettes:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mEnabledIndexList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mSelectedPalette:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->createModels(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mainColor:Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->mMainColorIsSelected:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setColorSelection(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_1
    return-void
.end method

.method public updateSelectPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    const/high16 v1, -0x100000

    and-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->recent:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->updateSelectPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_0
    return-void
.end method
