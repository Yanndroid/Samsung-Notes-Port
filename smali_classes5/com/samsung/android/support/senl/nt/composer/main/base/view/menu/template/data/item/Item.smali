.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBase:Z

.field private mDrawablePath:Ljava/lang/String;

.field private mDrawableResId:I

.field private mExpand:Z

.field private mHeight:I

.field private mLoadItemIndex:I

.field private mMode:I

.field private mName:Ljava/lang/String;

.field private mPageCount:I

.field private mPath:Ljava/lang/String;

.field private mPdfUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Z

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mSelected:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mType:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mMode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawablePath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawableResId:I

    iput-boolean p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mBase:Z

    iput p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mWidth:I

    iput p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mHeight:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mType:I

    iget v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDrawablePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawablePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawableResId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mHeight:I

    return v0
.end method

.method public getLoadItemIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mLoadItemIndex:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPageCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPdfUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPdfUris:Ljava/util/List;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mSelected:Z

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mBase:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mExpand:Z

    return v0
.end method

.method public setDrawablePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawablePath:Ljava/lang/String;

    return-void
.end method

.method public setDrawableResId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mDrawableResId:I

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mExpand:Z

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mBase:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mMode:I

    :cond_1
    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPageCount:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setPdfUris(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mPdfUris:Ljava/util/List;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mLoadItemIndex:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->mSelected:Z

    return-void
.end method
