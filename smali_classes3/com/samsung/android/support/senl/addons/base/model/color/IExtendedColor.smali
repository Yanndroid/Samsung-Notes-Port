.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0000H&J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0000H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H&J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;",
        "getHSV",
        "",
        "isRgbSame",
        "",
        "other",
        "isSame",
        "setColor",
        "",
        "src",
        "hsv",
        "color",
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


# virtual methods
.method public abstract getHSV()[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setColor(I[F)V
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setColor([F)V
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
