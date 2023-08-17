.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindMapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;",
        "",
        "bind",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;)V",
        "holderName",
        "",
        "index",
        "",
        "mapperName",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "mHolderName",
        "getMHolderName",
        "()Ljava/lang/String;",
        "setMHolderName",
        "(Ljava/lang/String;)V",
        "mIndex",
        "getMIndex",
        "()I",
        "setMIndex",
        "(I)V",
        "mMapperName",
        "getMMapperName",
        "setMMapperName",
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
.field private mHolderName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIndex:I

.field private mMapperName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;->getPropertyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mHolderName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getBindingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mIndex:I

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getViewModelId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mMapperName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holderName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapperName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mHolderName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mIndex:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mMapperName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMHolderName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mHolderName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mIndex:I

    return v0
.end method

.method public final getMMapperName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mMapperName:Ljava/lang/String;

    return-object v0
.end method

.method public final setMHolderName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mHolderName:Ljava/lang/String;

    return-void
.end method

.method public final setMIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mIndex:I

    return-void
.end method

.method public final setMMapperName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder$BindMapper;->mMapperName:Ljava/lang/String;

    return-void
.end method
