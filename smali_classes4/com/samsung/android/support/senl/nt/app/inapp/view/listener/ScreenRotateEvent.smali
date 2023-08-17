.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_MARGIN:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "ScreenRotateListener"


# instance fields
.field private mOrientation:I

.field private mScreenRotateListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mOrientation:I

    return-void
.end method

.method private changeToLandscape(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ScreenRotateListener"

    const-string v1, "changeToLandscape"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mScreenRotateListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;->onOrientationChanged(II)V

    :cond_0
    return-void
.end method

.method private changeToPortrait()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ScreenRotateListener"

    const-string v1, "changeToPortrait"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mScreenRotateListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;->onOrientationChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged# no changed, orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenRotateListener"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 v0, 0x2d

    if-le p1, v0, :cond_4

    const/16 v0, 0x13b

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x87

    if-gt p1, v0, :cond_2

    const/4 p1, 0x3

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->changeToLandscape(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0xe1

    if-gt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->changeToPortrait()V

    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public setOrientationListener(Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent;->mScreenRotateListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/listener/ScreenRotateEvent$ScreenRotateListener;

    return-void
.end method
