.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEnable:Z

.field private mShadowViewHeight:I

.field private mShadowViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mEnable:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mEnable:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewWidth:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewHeight:I

    return-void
.end method

.method public getShadowViewHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewHeight:I

    return v0
.end method

.method public getShadowViewWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewWidth:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mEnable:Z

    return-void
.end method

.method public setShadowViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewHeight:I

    return-void
.end method

.method public setShadowViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragAndDropInfo{mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "mShadowViewWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "mShadowViewHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->mShadowViewHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
