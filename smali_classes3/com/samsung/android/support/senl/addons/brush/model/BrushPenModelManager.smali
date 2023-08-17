.class public final Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;,
        Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 ;2\u00020\u0001:\u0002:;B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010,\u001a\u00020-H\u0002J\u0006\u0010.\u001a\u00020-J\u0008\u0010/\u001a\u00020-H\u0002J\u0014\u00100\u001a\u0004\u0018\u0001012\u0008\u00102\u001a\u0004\u0018\u00010\u0010H\u0002J\u0006\u00103\u001a\u00020-J\u0010\u00104\u001a\u00020-2\u0008\u00105\u001a\u0004\u0018\u00010\u000eJ\u0006\u00106\u001a\u00020-J\u0006\u00107\u001a\u00020-J\u0012\u00108\u001a\u00020-2\u0008\u00102\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u00109\u001a\u00020-2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0010H\u0002R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\u000f\u001a\u0004\u0018\u00010$@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;",
        "",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;",
        "settingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V",
        "currentPenName",
        "",
        "getCurrentPenName",
        "()Ljava/lang/String;",
        "mBrushModelListener",
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;",
        "<set-?>",
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "mBrushPenModel",
        "getMBrushPenModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "mBrushPrevPenModel",
        "mColorChangeCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "mColorModelsManager",
        "getMColorModelsManager",
        "()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "mEraserChangeCallback",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "mFacade",
        "getMFacade",
        "()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "mFacadeCallback",
        "mIsPenChanged",
        "",
        "mPenListCallback",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "mPenModelList",
        "getMPenModelList",
        "()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "mRecentModel",
        "Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;",
        "mSettingsCallback",
        "mSettingsModel",
        "addRecent",
        "",
        "close",
        "initialize",
        "makePenInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "penModel",
        "savePenInfo",
        "setBrushModelListener",
        "listener",
        "setPenEraserInfo",
        "updateCurrentPenInfo",
        "updatePenInfo",
        "updatePenModel",
        "BrushModelZoomListener",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushModelListener:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEraserChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsPenChanged:Z

.field private mPenListCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecentModel:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$Companion;

    const-string v0, "BrushPenModelManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mColorChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mColorChangeCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mEraserChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mEraserChangeCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mEraserChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mPenListCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mFacadeCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;-><init>(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mEraserChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p3, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "Smudge"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p3, v0, v1, p2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p3, v0, v1, p2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->changeMainColorModel(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mIsPenChanged:Z

    return-void
.end method

.method public static final synthetic access$addRecent(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->addRecent()V

    return-void
.end method

.method public static final synthetic access$getMBrushModelListener$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushModelListener:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;

    return-object p0
.end method

.method public static final synthetic access$getMBrushPrevPenModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    return-object p0
.end method

.method public static final synthetic access$getMIsPenChanged$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mIsPenChanged:Z

    return p0
.end method

.method public static final synthetic access$getMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mRecentModel:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-object p0
.end method

.method public static final synthetic access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$initialize(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->initialize()V

    return-void
.end method

.method public static final synthetic access$setMBrushPrevPenModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    return-void
.end method

.method public static final synthetic access$setMIsPenChanged$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mIsPenChanged:Z

    return-void
.end method

.method public static final synthetic access$setMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mRecentModel:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-void
.end method

.method public static final synthetic access$updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    return-void
.end method

.method public static final synthetic access$updatePenModel(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    return-void
.end method

.method private final addRecent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mRecentModel:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mRecentModel:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->addRecentColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_0
    return-void
.end method

.method private final initialize()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->updateSize()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->makePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setPenEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    return-void
.end method

.method private final makePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getAlphaColor()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenSize()F

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "info.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "ColoredPencil"

    invoke-static {v2, v5, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result p1

    iput p1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    :cond_1
    return-object v1
.end method

.method private final updatePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenInfo : penModel is null."

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenInfo : mFacade is null."

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDocLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenInfo : doc is not loaded."

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->makePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorPickerVisibility()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v2, "Eraser"

    const/4 v3, 0x2

    invoke-static {p1, v2, v0, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenInfo ERASER "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenInfo PEN "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private final updatePenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePenModel - null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePenModel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPrevSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->setPrevSelectedPenName(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPrevPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mEraserChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mEraserChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorChangeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mSettingsCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushModelListener:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;

    return-void
.end method

.method public final getCurrentPenName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    return-object v0
.end method

.method public final getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-object v0
.end method

.method public final getMFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    return-object v0
.end method

.method public final getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    return-object v0
.end method

.method public final savePenInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->savePenInfo()V

    :cond_0
    return-void
.end method

.method public final setBrushModelListener(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushModelListener:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;

    return-void
.end method

.method public final setPenEraserInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->makePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setPenEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mPenModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    :cond_0
    return-void
.end method

.method public final updateCurrentPenInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->mBrushPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    return-void
.end method
