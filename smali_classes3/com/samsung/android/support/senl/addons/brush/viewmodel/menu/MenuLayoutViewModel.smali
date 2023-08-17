.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u0000 /2\u00020\u0001:\u0001/B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010#\u001a\u00020$H\u0014J\u0008\u0010%\u001a\u00020$H\u0014J\u0008\u0010&\u001a\u00020$H\u0014J\u0008\u0010\'\u001a\u0004\u0018\u00010\nJ\u0008\u0010(\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010)\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010*\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u001b\u001a\u00020$2\u0006\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020\u0018J\u0010\u0010-\u001a\u00020$2\u0008\u0010.\u001a\u0004\u0018\u00010\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u00060"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "manager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V",
        "mBrushCanvasViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;",
        "mColorGradationViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;",
        "mColorManager",
        "mColorMenuViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;",
        "mPenModeOpen",
        "",
        "mScreenModel",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "mSubMenuLayoutViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;",
        "penPopupAlign",
        "",
        "getPenPopupAlign",
        "()I",
        "setPenPopupAlign",
        "(I)V",
        "isOpen",
        "penViewMode",
        "getPenViewMode",
        "()Z",
        "setPenViewMode",
        "(Z)V",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getBrushCanvasViewModel",
        "getColorGradationViewModel",
        "getColorMenuViewModel",
        "getSubMenuLayoutViewModel",
        "penCount",
        "selectedPosition",
        "setSettingModel",
        "settingModel",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PEN_SETTING_POPUP_ALIGN_CENTER:I = 0x0

.field private static final PEN_SETTING_POPUP_ALIGN_END:I = 0x1

.field private static final PEN_SETTING_POPUP_ALIGN_START:I = -0x1

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushCanvasViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenModeOpen:Z

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private penPopupAlign:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel$Companion;

    const-string v0, "MenuLayoutViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p3, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mBrushCanvasViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mBrushCanvasViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mBrushCanvasViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    :cond_3
    return-void
.end method

.method public final getBrushCanvasViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mBrushCanvasViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    return-object v0
.end method

.method public final getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    return-object v0
.end method

.method public final getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    return-object v0
.end method

.method public final getPenPopupAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    return v0
.end method

.method public final getPenViewMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mPenModeOpen:Z

    return v0
.end method

.method public final getSubMenuLayoutViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    return-object v0
.end method

.method public final setPenPopupAlign(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    return-void
.end method

.method public final setPenPopupAlign(II)V
    .locals 4

    rem-int/lit8 v0, p1, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    div-int/lit8 v0, p2, 0x3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-lt p2, v0, :cond_2

    iput v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    if-nez v0, :cond_3

    const-string v0, "CENTER"

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    const-string v0, "START"

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    const-string v0, "END"

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "penPopupAlign. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->penPopupAlign:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPenViewMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mPenModeOpen:Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onShowHideBrushesClicked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    :cond_0
    return-void
.end method

.method public final setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method
