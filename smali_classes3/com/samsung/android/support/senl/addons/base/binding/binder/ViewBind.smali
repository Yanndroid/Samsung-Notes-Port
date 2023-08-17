.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tJ\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "mPropertyId",
        "",
        "mViewId",
        "",
        "mViewKey",
        "mViewModelId",
        "mBindingId",
        "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V",
        "mIsPendingExecutable",
        "",
        "getBindingId",
        "getPropertyId",
        "getViewId",
        "getViewKey",
        "getViewModelId",
        "isPendingExecutable",
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
.field private final mBindingId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsPendingExecutable:Z

.field private mPropertyId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mViewId:I

.field private final mViewKey:I

.field private final mViewModelId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mPropertyId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mPropertyId:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewId:I

    iput p3, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewKey:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewModelId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mBindingId:Ljava/lang/String;

    const-string p2, "_pending"

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mIsPendingExecutable:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mPropertyId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "_pending"

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mPropertyId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBindingId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mBindingId:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mPropertyId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewId:I

    return v0
.end method

.method public getViewKey()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewKey:I

    return v0
.end method

.method public getViewModelId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mViewModelId:Ljava/lang/String;

    return-object v0
.end method

.method public isPendingExecutable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;->mIsPendingExecutable:Z

    return v0
.end method
