.class public final Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;
.super Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;",
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;",
        "prev",
        "(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V",
        "mPenType",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;",
        "close",
        "",
        "getBrushLayoutInfo",
        "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
        "setBrushLayout",
        "brushLayout",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;",
        "listener",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;",
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
.field private mPenType:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;->mPenType:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setViewModeChangeListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;->mPenType:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->close()V

    return-void
.end method

.method public getBrushLayoutInfo()Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->style:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penViewType:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->moveable:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->isOpened:Z

    const v1, 0x3f7d21ff    # 0.9888f

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penWidthRatio:F

    const v1, 0x3e85a1cb    # 0.261f

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penHeightRatio:F

    const/4 v2, 0x3

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penAlign:I

    const v3, 0x3f3d2f1b    # 0.739f

    iput v3, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorWidthRatio:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorHeightRatio:F

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorAlign:I

    const v1, 0x3bb78034    # 0.0056f

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->spaceRatio:F

    return-object v0
.end method

.method public setBrushLayout(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "brushLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setBrushLayout(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.samsung.android.sdk.pen.setting.drawing.SpenBrushPenTypeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;->mPenType:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setViewModeChangeListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V

    :cond_0
    return-void
.end method
