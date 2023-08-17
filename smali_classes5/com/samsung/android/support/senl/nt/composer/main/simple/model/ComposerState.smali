.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;
    }
.end annotation


# static fields
.field public static final KEY_STATE:Ljava/lang/String; = "ComposerState"

.field private static final transient TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEventListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;

.field private mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

.field private transient mReadyRestore:Z

.field private mZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ComposerState"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mZoomRatio:F

    return-void
.end method


# virtual methods
.method public getPagePanInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mZoomRatio:F

    return v0
.end method

.method public isReadyRestore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mReadyRestore:Z

    return v0
.end method

.method public setEventListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mEventListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;

    return-void
.end method

.method public setPosition(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mZoomRatio:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mZoomRatio:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mEventListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState$EventListener;->onPositionChanged()V

    :cond_1
    return-void
.end method

.method public setReadyRestore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mReadyRestore:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComposerState{, mPagePan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
