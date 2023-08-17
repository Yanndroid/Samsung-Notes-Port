.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$Companion;,
        Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011J\u0008\u0010\u0002\u001a\u00020\u0003H&J\"\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper;",
        "",
        "close",
        "",
        "onSizeChanged",
        "width",
        "",
        "height",
        "focusArea",
        "Landroid/graphics/RectF;",
        "setContentScale",
        "contentScale",
        "",
        "setView",
        "view",
        "Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;",
        "Companion",
        "IFocusInfoUpdater",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEEP_FOCUS_BOTTOM:I = 0x2

.field public static final KEEP_FOCUS_CENTER:I = 0x1

.field public static final KEEP_FOCUS_NONE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper;->Companion:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$Companion;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract onSizeChanged(IILandroid/graphics/RectF;)V
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setContentScale(F)V
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
