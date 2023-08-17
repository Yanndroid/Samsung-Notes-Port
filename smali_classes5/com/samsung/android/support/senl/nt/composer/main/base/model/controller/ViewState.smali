.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NONE:I

.field public static PAUSE:I

.field public static RESUME:I

.field public static START:I

.field public static STOP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ViewState"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->RESUME:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->START:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->PAUSE:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->STOP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->NONE:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return v0
.end method

.method public isResumed()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->RESUME:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->STOP:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->PAUSE:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return-void
.end method

.method public onResume()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->RESUME:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return-void
.end method

.method public onStart()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->START:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return-void
.end method

.method public onStop()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->STOP:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->mState:I

    return-void
.end method
