.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "getPageDocHeight",
        "",
        "getPageDocWidth",
        "getPaintingViewPan",
        "Landroid/graphics/PointF;",
        "getPreviewBitmap",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;",
        "isDocLoaded",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getPageDocHeight()I
.end method

.method public abstract getPageDocWidth()I
.end method

.method public abstract getPaintingViewPan()Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPreviewBitmap()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isDocLoaded()Z
.end method
