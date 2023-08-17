.class public Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0002\u0019\u001aB\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0000J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000e\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001a\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\"\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\nH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;",
        "root",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "mChild",
        "",
        "mMappers",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;",
        "addChild",
        "",
        "binder",
        "addMapper",
        "mapper",
        "enableMapper",
        "findViewModelId",
        "",
        "id",
        "",
        "setViewModel",
        "viewModel",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "setViewModelToChild",
        "child",
        "unBind",
        "BindMapper",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mChild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$Companion;

    const-string v0, "CompositeBinder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mChild:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mMappers:Ljava/util/List;

    return-void
.end method

.method private final findViewModelId(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->getMMapperName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final setViewModelToChild(Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->getMHolderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p3, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IViewModelHolder;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->getMMapperName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IViewModelHolder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->getMIndex()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IViewModelHolder;->getViewModel(I)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mChild:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addMapper(Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mMappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final enableMapper()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setMIsLinkable(Z)V

    return-void
.end method

.method public setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->getMIsLinkable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->findViewModelId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not allowed viewmodel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mChild:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->getMIsLinkable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->setViewModelToChild(Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unBind()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mChild:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->unBind()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mChild:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->unBind()V

    return-void
.end method
