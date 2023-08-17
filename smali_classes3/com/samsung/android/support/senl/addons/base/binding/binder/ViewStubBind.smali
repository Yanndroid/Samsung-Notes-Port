.class public Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "viewStubId",
        "",
        "size",
        "(II)V",
        "mSize",
        "mViewId",
        "getBindingId",
        "",
        "getPropertyId",
        "getSize",
        "getViewId",
        "getViewKey",
        "getViewModelId",
        "isPendingExecutable",
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
.field private final mSize:I

.field private final mViewId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;->mViewId:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;->mSize:I

    return-void
.end method


# virtual methods
.method public getBindingId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;->mSize:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;->mViewId:I

    return v0
.end method

.method public getViewKey()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewModelId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPendingExecutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
