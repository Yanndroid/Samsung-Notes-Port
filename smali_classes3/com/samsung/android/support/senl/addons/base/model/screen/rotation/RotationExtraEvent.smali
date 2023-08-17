.class public final Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;
.super Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;",
        "prev",
        "",
        "target",
        "data",
        "dataType",
        "(IIII)V",
        "mDataType",
        "mExtraData",
        "getExtraData",
        "getExtraDataType",
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


# instance fields
.field private mDataType:I

.field private mExtraData:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;-><init>(II)V

    iput p3, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;->mExtraData:I

    iput p4, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;->mDataType:I

    return-void
.end method


# virtual methods
.method public getExtraData()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;->mExtraData:I

    return v0
.end method

.method public getExtraDataType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;->mDataType:I

    return v0
.end method
