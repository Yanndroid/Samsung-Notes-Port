.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008f\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cJ\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u0004H&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u0006H&J\u0008\u0010\u000e\u001a\u00020\u000cH&J\u0008\u0010\u000f\u001a\u00020\u000cH&J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u00a6\u0002J\u001b\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u0006H\u00a6\u0002J#\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u00a6\u0002J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000cH&J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006H&J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u000cH&\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "getAlpha",
        "",
        "getAlphaColor",
        "",
        "getPenClassName",
        "",
        "getPenName",
        "getPenSize",
        "getSelected",
        "",
        "getSize",
        "hasAlpha",
        "isEnabled",
        "set",
        "",
        "color",
        "size",
        "type",
        "setAlpha",
        "alphaValue",
        "setEnabled",
        "enable",
        "setPenSize",
        "setSelected",
        "selected",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PEN_MODEL_ENABLE_CHANGED:I = 0x12f

.field public static final OBSV_PEN_MODEL_SELECTION_CHANGED:I = 0x12d

.field public static final OBSV_PEN_MODEL_SIZE_CHANGED:I = 0x12e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAlpha()F
.end method

.method public abstract getAlphaColor()I
.end method

.method public abstract getPenClassName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPenName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPenSize()F
.end method

.method public abstract getSelected()Z
.end method

.method public abstract getSize()I
.end method

.method public abstract hasAlpha()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract set(II)V
.end method

.method public abstract set(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract set(Ljava/lang/String;II)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setPenSize(I)V
.end method

.method public abstract setSelected(Z)V
.end method
