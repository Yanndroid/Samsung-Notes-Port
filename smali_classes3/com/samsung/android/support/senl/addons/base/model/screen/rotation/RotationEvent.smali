.class public Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "prev",
        "",
        "target",
        "(II)V",
        "mPrev",
        "mTarget",
        "getPrevAngle",
        "getTargetAngle",
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
.field private mPrev:I

.field private mTarget:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;->mPrev:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;->mTarget:I

    return-void
.end method


# virtual methods
.method public getPrevAngle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;->mPrev:I

    return v0
.end method

.method public getTargetAngle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;->mTarget:I

    return v0
.end method
