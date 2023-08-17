.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "getSpenOnlyMode",
        "",
        "setSpenOnlyMode",
        "",
        "enable",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PROPERTY_SPEN_MODE_CHANGED:I = 0x191

.field public static final OBSV_PROPERTY_SPEN_MODE_UPDATED:I = 0x193


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;->Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSpenOnlyMode()Z
.end method

.method public abstract setSpenOnlyMode(Z)V
.end method
