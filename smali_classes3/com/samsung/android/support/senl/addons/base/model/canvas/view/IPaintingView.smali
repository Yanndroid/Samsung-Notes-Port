.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;,
        Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u001c2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u001c\u001dJ\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J*\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H&J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\u001a\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0014H&\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        "capturePage",
        "Landroid/graphics/Bitmap;",
        "ratio",
        "",
        "option",
        "",
        "captureRect",
        "rect",
        "Landroid/graphics/RectF;",
        "getValidRect",
        "lMargin",
        "tMargin",
        "rMargin",
        "bMargin",
        "setMouseWheelZoomEnabled",
        "",
        "wheelZoomEnabled",
        "",
        "setOnLoadedDocumentListener",
        "listener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;",
        "setPaintingDoc",
        "paintingDoc",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
        "isUpdate",
        "Companion",
        "OnDocumentLoadedListener",
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
.field public static final CAPTURE_ALL:I = 0x11100111

.field public static final CAPTURE_FOREGROUND_ALL:I = 0x111

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$Companion;

    return-void
.end method


# virtual methods
.method public abstract capturePage(FI)Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getValidRect(IIII)Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setMouseWheelZoomEnabled(Z)V
.end method

.method public abstract setOnLoadedDocumentListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
