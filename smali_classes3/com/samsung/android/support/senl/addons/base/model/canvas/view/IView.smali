.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u0000 G*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001GJ\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0004H&J\u0008\u0010\u0007\u001a\u00020\u0004H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\tH&J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0008\u0010\u000f\u001a\u00020\tH&J\u0014\u0010\u0010\u001a\u00020\u00042\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0014H&J\u0008\u0010\u0016\u001a\u00020\u0017H&J\u0008\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH&J\u0008\u0010\u001c\u001a\u00020\tH&J\u0008\u0010\u001d\u001a\u00020\u0014H&J\u0014\u0010\u001e\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030!H&J\u0008\u0010\"\u001a\u00020\u001fH&J\u0008\u0010#\u001a\u00020\u001fH&J\u0008\u0010$\u001a\u00020\u0004H&J\u0012\u0010%\u001a\u00020\u001f2\u0008\u0010&\u001a\u0004\u0018\u00010\'H&J\u001a\u0010(\u001a\u00020\u001f2\u0008\u0010)\u001a\u0004\u0018\u00010\'2\u0006\u0010*\u001a\u00020+H&J\u0008\u0010,\u001a\u00020\u0004H&J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\tH&J\u0012\u0010/\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u000101H&J\u0012\u00102\u001a\u00020\u00042\u0008\u00103\u001a\u0004\u0018\u00010\u0019H&J\u0010\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u00020\u001fH&J\u0010\u00106\u001a\u00020\u001f2\u0006\u00107\u001a\u00020\u0014H&J\u0012\u00108\u001a\u00020\u00042\u0008\u00109\u001a\u0004\u0018\u00010\u0017H&J\u0012\u0010:\u001a\u00020\u00042\u0008\u00103\u001a\u0004\u0018\u00010\u0019H&J\u0012\u0010;\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u00010<H&J\u0018\u0010=\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010>\u001a\u00020\tH&J\u0012\u0010?\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u00010<H&J\u0012\u0010@\u001a\u00020\u00042\u0008\u00100\u001a\u0004\u0018\u00010AH&J \u0010B\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u00142\u0006\u0010D\u001a\u00020\u0014H&J\u0008\u0010E\u001a\u00020\u0004H&J\u0008\u0010F\u001a\u00020\u0004H&\u00a8\u0006H"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "T",
        "",
        "clearAll",
        "",
        "close",
        "closeControl",
        "commitStroke",
        "getCanvasHeight",
        "",
        "getCanvasWidth",
        "getConfiguration",
        "Landroid/content/res/Configuration;",
        "getContext",
        "Landroid/content/Context;",
        "getHeight",
        "getLocationInWindow",
        "outLocation",
        "",
        "getMaxZoomScale",
        "",
        "getMinZoomScale",
        "getPan",
        "Landroid/graphics/PointF;",
        "getPenSettingInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
        "getToolTypeAction",
        "var1",
        "getWidth",
        "getZoomScale",
        "initializeDocModel",
        "",
        "docModel",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "isHScrollable",
        "isVScrollable",
        "lockForSave",
        "post",
        "run",
        "Ljava/lang/Runnable;",
        "postDelayed",
        "runnable",
        "delayMs",
        "",
        "requestReadyForSave",
        "setActionType",
        "actionType",
        "setColorPickerListener",
        "listener",
        "Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;",
        "setEraserSettingInfo",
        "info",
        "setFrontBufferRenderingEnabled",
        "enable",
        "setMinZoomScale",
        "scale",
        "setPan",
        "point",
        "setPenSettingInfo",
        "setPreTouchListener",
        "Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;",
        "setToolTypeAction",
        "var2",
        "setTouchListener",
        "setZoomListener",
        "Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;",
        "setZoomScale",
        "centerX",
        "centerY",
        "unlockForSave",
        "update",
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
.field public static final ACTION_CHANGESTYLE:I = 0xd

.field public static final ACTION_COLOR_PICKER:I = 0x9

.field public static final ACTION_ERASER:I = 0x7

.field public static final ACTION_GESTURE:I = 0x1

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_RECOGNITION:I = 0xc

.field public static final ACTION_RECOGNITION_PREVIEW:I = 0xe

.field public static final ACTION_SELECTION:I = 0xa

.field public static final ACTION_STROKE:I = 0x2

.field public static final ACTION_STROKE_REMOVER:I = 0x8

.field public static final ACTION_TEXT:I = 0xb

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOOL_ERASER:I = 0x4

.field public static final TOOL_FINGER:I = 0x1

.field public static final TOOL_MOUSE:I = 0x3

.field public static final TOOL_MULTI_TOUCH:I = 0x5

.field public static final TOOL_PEN_BUTTON:I = 0x6

.field public static final TOOL_SPEN:I = 0x2

.field public static final TOOL_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract close()V
.end method

.method public abstract closeControl()V
.end method

.method public abstract commitStroke()V
.end method

.method public abstract getCanvasHeight()I
.end method

.method public abstract getCanvasWidth()I
.end method

.method public abstract getConfiguration()Landroid/content/res/Configuration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLocationInWindow([I)V
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getMaxZoomScale()F
.end method

.method public abstract getMinZoomScale()F
.end method

.method public abstract getPan()Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getToolTypeAction(I)I
.end method

.method public abstract getWidth()I
.end method

.method public abstract getZoomScale()F
.end method

.method public abstract initializeDocModel(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)Z
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isHScrollable()Z
.end method

.method public abstract isVScrollable()Z
.end method

.method public abstract lockForSave()V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract requestReadyForSave()V
.end method

.method public abstract setActionType(I)V
.end method

.method public abstract setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .param p1    # Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFrontBufferRenderingEnabled(Z)Z
.end method

.method public abstract setMinZoomScale(F)Z
.end method

.method public abstract setPan(Landroid/graphics/PointF;)V
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .param p1    # Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setToolTypeAction(II)V
.end method

.method public abstract setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .param p1    # Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .param p1    # Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setZoomScale(FFF)V
.end method

.method public abstract unlockForSave()V
.end method

.method public abstract update()V
.end method
