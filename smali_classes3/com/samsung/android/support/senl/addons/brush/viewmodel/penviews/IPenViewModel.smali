.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008f\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\n\u0010\r\u001a\u0004\u0018\u00010\u000cH&J\u0008\u0010\u000e\u001a\u00020\u0005H&J\u0008\u0010\u000f\u001a\u00020\u0005H&J\u0008\u0010\u0010\u001a\u00020\nH&J\u0008\u0010\u0011\u001a\u00020\nH&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H&J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0005H&J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\nH&J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0005H&\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "getAlpha",
        "",
        "getAlphaColor",
        "",
        "getColor",
        "getInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "getIsShowMask",
        "",
        "getPenClass",
        "",
        "getPenName",
        "getPosition",
        "getSize",
        "hasAlpha",
        "isSelected",
        "setAlpha",
        "",
        "alphaColor",
        "setColor",
        "color",
        "setSelected",
        "selected",
        "setSize",
        "size",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAlpha()F
.end method

.method public abstract getAlphaColor()I
.end method

.method public abstract getColor()I
.end method

.method public abstract getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getIsShowMask()Z
.end method

.method public abstract getPenClass()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPenName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPosition()I
.end method

.method public abstract getSize()I
.end method

.method public abstract hasAlpha()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setAlpha(I)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setSize(I)V
.end method
