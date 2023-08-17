.class public Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mDirection:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mDirection:I

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLTR()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRTL()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVertical()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mDirection:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->mOrientation:I

    return-void
.end method
