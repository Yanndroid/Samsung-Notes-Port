.class public Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010\u001e\u001a\u00020\u0014H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;",
        "canvasSizeModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mEraserPenModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;",
        "mPenModelList",
        "Ljava/util/Hashtable;",
        "",
        "mPrevPenName",
        "prevSelectedModel",
        "getPrevSelectedModel",
        "()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;",
        "close",
        "",
        "getEraserPenModel",
        "getPenModel",
        "index",
        "",
        "name",
        "getSelectedModel",
        "savePenInfo",
        "setPrevSelectedPenName",
        "penName",
        "updateSize",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenModelList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPrevPenName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$Companion;

    const-string v0, "PenModelList"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$mCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->isExistPrevPreference()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_COUNT()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v3, v5, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->loadPenModel(ILjava/lang/String;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getPenName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    sget-object v5, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->getSelectedPenIndex()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_COUNT()I

    move-result v2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getERASER_NAME()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->loadPenModel(ILjava/lang/String;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->clearPrevPreference()V

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_COUNT()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5, v3, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->loadPenModel(Ljava/lang/String;ILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getPenName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    sget-object v5, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->getSelectedPenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->getPrevSelectedPenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getERASER_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_COUNT()I

    move-result v1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->loadPenModel(Ljava/lang/String;ILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;)V

    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pen list size. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->savePenInfo()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public bridge synthetic getEraserPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    return-object v0
.end method

.method public getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    return-object v0
.end method

.method public bridge synthetic getPenModel(I)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    return-object p1
.end method

.method public getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object p1

    return-object p1
.end method

.method public getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    return-object p1
.end method

.method public final getPrevSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    return-object v0
.end method

.method public bridge synthetic getSelectedModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public savePenInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->savePrevPenName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->savePenInfo()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->savePenInfo()V

    :cond_3
    return-void
.end method

.method public final setPrevSelectedPenName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPrevPenName:Ljava/lang/String;

    return-void
.end method

.method public updateSize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update Pen Size"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mPenModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getPenModel(I)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->updateSize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update Eraser Size"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->mEraserPenModel:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->updateSize()V

    :cond_1
    return-void
.end method
