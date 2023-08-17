.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;,
        Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$DownScale;,
        Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;,
        Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;
    }
.end annotation


# static fields
.field public static final MAX_SCALE:F = 2.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;

.field private mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;

    return-void
.end method

.method private getScale(F)Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;-><init>()V

    return-object p1

    :cond_0
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$DownScale;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$DownScale;-><init>()V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    return-object p1
.end method


# virtual methods
.method public onScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->getScale(F)Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;->updateScale(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$IPresenter;->onScaleChanged(Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;->mScale:Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;

    return-void
.end method
