.class Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLeft:I

.field private mPosition:I

.field private mRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mLeft:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mPosition:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mRight:I

    return v0
.end method

.method public isOverlaid(II)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mLeft:I

    if-le p1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mRight:I

    if-lt p2, v1, :cond_2

    :cond_0
    if-ge p1, v0, :cond_1

    if-gt p2, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mRight:I

    if-ge p1, v0, :cond_3

    if-le p2, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mLeft:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mPosition:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->mRight:I

    return-void
.end method
