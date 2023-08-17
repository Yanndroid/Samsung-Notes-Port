.class abstract Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mHasRestoreState:Z

.field private mViewOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->mViewOrientation:I

    return-void
.end method


# virtual methods
.method public abstract clearView()V
.end method

.method public getViewOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->mViewOrientation:I

    return v0
.end method

.method public hasRestoreState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->mHasRestoreState:Z

    return v0
.end method

.method public restoreViewState()V
    .locals 0

    return-void
.end method

.method public saveViewState()V
    .locals 0

    return-void
.end method

.method public setRestoreState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->mHasRestoreState:Z

    return-void
.end method

.method public setViewOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->mViewOrientation:I

    return-void
.end method
