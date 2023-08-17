.class public abstract Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;
.super Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0004\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\tH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\tR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;",
        "handler",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V",
        "mMenuSize",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "mStatusHeight",
        "",
        "getContentPositionY",
        "getMenuSizeInjector",
        "getStatusBarHeight",
        "setMenuSizeInjector",
        "",
        "injector",
        "setStatusHeight",
        "y",
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
.field private mMenuSize:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mStatusHeight:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V

    return-void
.end method


# virtual methods
.method public getContentPositionY()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->mStatusHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMenuSizeInjector()Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->mMenuSize:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->mStatusHeight:I

    return v0
.end method

.method public setMenuSizeInjector(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->mMenuSize:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    return-void
.end method

.method public final setStatusHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->mStatusHeight:I

    return-void
.end method
