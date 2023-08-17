.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014J\u0008\u0010\u0003\u001a\u00020\u0004H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0004H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH&J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000bH&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getColor",
        "",
        "getDescription",
        "",
        "getHSV",
        "",
        "getPosition",
        "isEnabled",
        "",
        "isSelected",
        "select",
        "setColor",
        "",
        "hsv",
        "color",
        "setEnabled",
        "enabled",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_MENU_COLOR_SELECTION_CHANGE:I = 0x4e21


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getColor()I
.end method

.method public abstract getDescription()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getHSV()[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPosition()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract select(Z)Z
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setColor([F)V
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setEnabled(Z)V
.end method
