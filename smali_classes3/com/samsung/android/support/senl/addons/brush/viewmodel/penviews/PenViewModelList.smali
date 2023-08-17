.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u001b\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0014J\u0008\u0010\u0016\u001a\u00020\u0014H\u0014J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0012H\u0002J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020\u0012H\u0002J\u0016\u0010\"\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "factory",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V",
        "mEraserActionListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;",
        "mEraserCallback",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "mEraserViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;",
        "mPenActionListener",
        "mPenCallback",
        "mSettingsModel",
        "mViewModelList",
        "Ljava/util/Hashtable;",
        "",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "findPenName",
        "className",
        "getEraserActionListener",
        "getEraserViewModel",
        "getPenActionListener",
        "getSelectedViewModel",
        "getViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;",
        "index",
        "",
        "name",
        "onPenClicked",
        "isSelected",
        "",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mEraserActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEraserCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mViewModelList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$Companion;

    const-string v0, "PenViewModelList"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 6
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory<",
            "*>;",
            "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
            ")V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->NAME:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->createViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->createEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mPenActionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserActionListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserActionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    return-void
.end method

.method public static final synthetic access$getMEraserViewModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final findPenName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\."

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[0-9]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->NAME:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object p1

    return-object p1
.end method

.method private final getViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    return-object p1
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    :cond_2
    return-void
.end method

.method public final getEraserActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    return-object v0
.end method

.method public final getEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mEraserViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    return-object v0
.end method

.method public final getPenActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mPenActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenActionListener;

    return-object v0
.end method

.method public final getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->mViewModelList:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->isSelected()Z

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

.method public final onPenClicked(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->findPenName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setSelected(Z)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPenClicked. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPenClicked. setPenViewModel. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setSelected(Z)V

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onPenClicked()V

    return-void
.end method
