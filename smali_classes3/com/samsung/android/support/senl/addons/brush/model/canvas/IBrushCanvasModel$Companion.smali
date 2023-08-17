.class public final Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;",
        "",
        "()V",
        "OBSV_PROPERTY_SHOW_CANVAS",
        "",
        "getOBSV_PROPERTY_SHOW_CANVAS",
        "()I",
        "setOBSV_PROPERTY_SHOW_CANVAS",
        "(I)V",
        "OBSV_PROPERTY_SHOW_PREVIEW_IMAGES",
        "getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES",
        "setOBSV_PROPERTY_SHOW_PREVIEW_IMAGES",
        "OBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING",
        "getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING",
        "setOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING",
        "OBSV_PROPERTY_UPDATE_PREVIEW",
        "getOBSV_PROPERTY_UPDATE_PREVIEW",
        "setOBSV_PROPERTY_UPDATE_PREVIEW",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

.field private static OBSV_PROPERTY_SHOW_CANVAS:I

.field private static OBSV_PROPERTY_SHOW_PREVIEW_IMAGES:I

.field private static OBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING:I

.field private static OBSV_PROPERTY_UPDATE_PREVIEW:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    const/16 v0, 0x258

    sput v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES:I

    const/16 v0, 0x259

    sput v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_UPDATE_PREVIEW:I

    const/16 v0, 0x25a

    sput v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING:I

    const/16 v0, 0x25b

    sput v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_CANVAS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOBSV_PROPERTY_SHOW_CANVAS()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_CANVAS:I

    return v0
.end method

.method public final getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES:I

    return v0
.end method

.method public final getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING:I

    return v0
.end method

.method public final getOBSV_PROPERTY_UPDATE_PREVIEW()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_UPDATE_PREVIEW:I

    return v0
.end method

.method public final setOBSV_PROPERTY_SHOW_CANVAS(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_CANVAS:I

    return-void
.end method

.method public final setOBSV_PROPERTY_SHOW_PREVIEW_IMAGES(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES:I

    return-void
.end method

.method public final setOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING:I

    return-void
.end method

.method public final setOBSV_PROPERTY_UPDATE_PREVIEW(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->OBSV_PROPERTY_UPDATE_PREVIEW:I

    return-void
.end method
