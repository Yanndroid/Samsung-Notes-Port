.class public final Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory<",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "mModelList",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;)V",
        "createEraserViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;",
        "createViewModel",
        "name",
        "",
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


# instance fields
.field private final mModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mModelList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;->mModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;

    return-void
.end method


# virtual methods
.method public createEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;->mModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IBasePenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->setPenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    return-object v0
.end method

.method public createViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;->mModelList:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IBasePenModelList;->getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->setPenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    return-object v0
.end method
