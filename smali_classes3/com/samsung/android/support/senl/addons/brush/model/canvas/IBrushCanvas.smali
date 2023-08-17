.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H&J(\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH&J\u001f\u0010\u000f\u001a\u00020\u00032\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u00032\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H&\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;",
        "setMargin",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "setTouchMargin",
        "marginLeft",
        "",
        "marginTop",
        "marginRight",
        "marginBottom",
        "updateRedo",
        "userDataList",
        "",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        "([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V",
        "updateUndo",
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
.field public static final BRUSH_CANVAS_MIN_ZOOM:F = 0.9f

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas$Companion;

    return-void
.end method


# virtual methods
.method public abstract setMargin(FFFF)V
.end method

.method public abstract setTouchMargin(IIII)V
.end method

.method public abstract updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .param p1    # [Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .param p1    # [Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
