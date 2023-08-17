.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 :2\u00020\u0001:\u0001:B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010.\u001a\u00020*H&J\u0008\u0010/\u001a\u00020*H&J\u0012\u00100\u001a\u00020*2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020*2\u0008\u00104\u001a\u0004\u0018\u00010\u000eJ\u001e\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0010J\u0006\u00109\u001a\u00020*R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\nR$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00168B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00168B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u000e\u0010$\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010&\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\u001e\"\u0004\u0008(\u0010 \u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "()V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "mCheckZoomInOut",
        "",
        "getMCheckZoomInOut",
        "()I",
        "setMCheckZoomInOut",
        "(I)V",
        "mFacade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "mPrevZoomRatio",
        "",
        "getMPrevZoomRatio",
        "()F",
        "setMPrevZoomRatio",
        "(F)V",
        "mZoomInBtnEnabled",
        "",
        "mZoomOutBtnEnabled",
        "mZoomTextVisibility",
        "rectRipple",
        "getRectRipple",
        "enable",
        "zoomInBtnState",
        "getZoomInBtnState",
        "()Z",
        "setZoomInBtnState",
        "(Z)V",
        "zoomOutBtnState",
        "getZoomOutBtnState",
        "setZoomOutBtnState",
        "zoomPercent",
        "visibility",
        "zoomTextVisibility",
        "getZoomTextVisibility",
        "setZoomTextVisibility",
        "clearModels",
        "",
        "getData",
        "",
        "id",
        "onZoomInClicked",
        "onZoomOutClicked",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "setFacade",
        "facade",
        "updateZoomInOutButton",
        "currentScale",
        "minScale",
        "maxScale",
        "updateZoomText",
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
.field private static final BINDING_ID_ROUND_RECT:Ljava/lang/String; = "rectRipple"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_BTN_DESCRIPTION:Ljava/lang/String; = "description"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_IN_BTN_STATE:Ljava/lang/String; = "zoomInBtnState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_IN_CLICKED:Ljava/lang/String; = "onZoomInClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_OUT_BTN_STATE:Ljava/lang/String; = "zoomOutBtnState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_OUT_CLICKED:Ljava/lang/String; = "onZoomOutClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_PERCENT:Ljava/lang/String; = "zoomPercent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_TEXT_VISIBILITY:Ljava/lang/String; = "zoomTextVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ZOOM_DEFAULT:I = 0x0

.field public static final ZOOM_IN:I = 0x1

.field public static final ZOOM_OUT:I = 0x2


# instance fields
.field private mCheckZoomInOut:I

.field private mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPrevZoomRatio:F

.field private mZoomInBtnEnabled:Z

.field private mZoomOutBtnEnabled:Z

.field private mZoomTextVisibility:Z

.field private zoomPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel$Companion;

    const-string v0, "AbsZoomViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mPrevZoomRatio:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->zoomPercent:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomInBtnEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomOutBtnEnabled:Z

    return-void
.end method

.method private final getDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v1

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private final getRectRipple()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->TYPE_RECTANGLE:I

    return v0
.end method

.method private final getZoomInBtnState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomInBtnEnabled:Z

    return v0
.end method

.method private final getZoomOutBtnState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomOutBtnEnabled:Z

    return v0
.end method

.method private final setZoomInBtnState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomInBtnEnabled:Z

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomInBtnState(), enabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomInBtnEnabled:Z

    const-string/jumbo p1, "zoomInBtnState"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setZoomOutBtnState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomOutBtnEnabled:Z

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomOutBtnState(), enabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomOutBtnEnabled:Z

    const-string/jumbo p1, "zoomOutBtnState"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "rectRipple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getRectRipple()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string/jumbo v0, "zoomTextVisibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getZoomTextVisibility()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string/jumbo v0, "zoomOutBtnState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getZoomOutBtnState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string/jumbo v0, "zoomInBtnState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getZoomInBtnState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string/jumbo v0, "zoomPercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->zoomPercent:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_5
        -0x5fdd8b0e -> :sswitch_4
        -0x56e0fff3 -> :sswitch_3
        -0x44ce38d0 -> :sswitch_2
        -0x14410d2e -> :sswitch_1
        -0x1fafecc -> :sswitch_0
    .end sparse-switch
.end method

.method public final getMCheckZoomInOut()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mCheckZoomInOut:I

    return v0
.end method

.method public final getMPrevZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mPrevZoomRatio:F

    return v0
.end method

.method public final getZoomTextVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomTextVisibility:Z

    return v0
.end method

.method public abstract onZoomInClicked()V
.end method

.method public abstract onZoomOutClicked()V
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "action_click"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onZoomInClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->onZoomInClicked()V

    goto :goto_1

    :cond_1
    const-string v0, "onZoomOutClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->onZoomOutClicked()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-void
.end method

.method public final setMCheckZoomInOut(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mCheckZoomInOut:I

    return-void
.end method

.method public final setMPrevZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mPrevZoomRatio:F

    return-void
.end method

.method public final setZoomTextVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mZoomTextVisibility:Z

    const-string/jumbo p1, "zoomTextVisibility"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateZoomInOutButton(FFF)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateZoomButton(), current/min/max= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->setZoomInBtnState(Z)V

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->setZoomOutBtnState(Z)V

    const-string p1, "description"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateZoomText()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mPrevZoomRatio:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->setZoomTextVisibility(Z)V

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->zoomPercent:I

    const-string/jumbo v1, "zoomPercent"

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->mPrevZoomRatio:F

    return-void
.end method
