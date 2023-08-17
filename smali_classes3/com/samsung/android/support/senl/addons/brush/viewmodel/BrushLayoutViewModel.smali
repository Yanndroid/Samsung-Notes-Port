.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 22\u00020\u0001:\u00012B-\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u001dH\u0014J\u0008\u0010\u001f\u001a\u00020\u001dH\u0014J\u0014\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016JP\u0010$\u001a\u00020\u001d2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u0011J\u0012\u0010/\u001a\u00020\u001d2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016R\"\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u00063"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "penViewModelList",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;",
        "manager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V",
        "<set-?>",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;",
        "menuViewModel",
        "getMenuViewModel",
        "()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;",
        "orientation",
        "",
        "getOrientation",
        "()I",
        "getPenViewModelList",
        "()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;",
        "setPenViewModelList",
        "(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V",
        "getScreenModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "setScreenModel",
        "(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "onLayoutChange",
        "v",
        "Landroid/view/View;",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
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
.field private static final BINDING_ID_LAYOUT_VIEW_MODEL:Ljava/lang/String; = "layoutViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ON_LAYOUT_CHANGE:Ljava/lang/String; = "onLayoutChange"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private menuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel$Companion;

    const-string v0, "BrushLayoutViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-direct {p2, p3, p1, p4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->menuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->menuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->menuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    :cond_1
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

    const-string v0, "orientation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "layoutViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->menuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->getOrientation()I

    move-result v0

    return v0
.end method

.method public final getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    return-object v0
.end method

.method public final getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-object v0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    :cond_0
    if-ge p4, p5, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->setOrientation(I)V

    :cond_2
    sget-object p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onLayoutChange : menu = "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " x "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", orientation="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayoutChange"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    iget v3, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iget v4, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iget v5, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iget v6, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iget v7, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iget v8, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iget v9, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iget v10, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    return-void
.end method

.method public final setPenViewModelList(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->penViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    return-void
.end method

.method public final setScreenModel(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->screenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-void
.end method
