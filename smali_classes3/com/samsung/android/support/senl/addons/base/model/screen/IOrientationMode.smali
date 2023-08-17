.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;",
        "",
        "getOrientation",
        "",
        "setOrientation",
        "",
        "orientation",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ORIENTATION_TYPE_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_TYPE_PORTRAIT:I = 0x1

.field public static final ORIENTATION_TYPE_UNKOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode$Companion;

    return-void
.end method


# virtual methods
.method public abstract getOrientation()I
.end method

.method public abstract setOrientation(I)V
.end method
