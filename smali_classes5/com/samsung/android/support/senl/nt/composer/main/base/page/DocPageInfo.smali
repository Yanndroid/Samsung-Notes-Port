.class public Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;
    }
.end annotation


# static fields
.field private static final BASE_CLEAR_LAST_POSITION:J = 0x9a7ec800L

.field private static final transient TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBlockToSetCurrentPage:Z

.field private final mBodyTextModifiedTime:J

.field private mCurrentPageIndex:I

.field private mEnabledDarkTheme:Z

.field private mIsZoomLocked:Z

.field private mLastOpenedTime:J

.field private mLeft:F

.field private transient mPageIndexObserverList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLayoutColumn:I

.field private mPageLayoutFitToScreen:Z

.field private mPageLayoutRow:I

.field private mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

.field private transient mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

.field private mRestore:Z

.field private mScrollVertical:Z

.field private final mServerTimeStamp:J

.field private mTop:F

.field private mTotalPageCount:I

.field private transient mViewUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;

.field private mZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DocPageInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mBodyTextModifiedTime:J

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mServerTimeStamp:J

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p1, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;-><init>(Landroid/graphics/PointF;ILandroid/graphics/PointF;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->loadPageLayoutSetting()V

    return-void
.end method

.method public constructor <init>(IIZLcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FJIIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mBodyTextModifiedTime:J

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mServerTimeStamp:J

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mEnabledDarkTheme:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    iput-wide p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    iput p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iput p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    iput-boolean p10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    iput-boolean p11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    iput-boolean p12, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;-><init>(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPageIndexObserverList()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPositionObserver()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    :cond_0
    return-void
.end method

.method private notifyDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;->onPageIndexChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPageIndexObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPositionAfterDays()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPositionAfterDays# cur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    sub-long v2, v0, v2

    const-wide v4, 0x9a7ec800L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPosition(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    return-void
.end method

.method public copy()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;
    .locals 14

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mEnabledDarkTheme:Z

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    iget v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iget v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    iget-boolean v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    iget-boolean v11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    iget-boolean v12, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;-><init>(IIZLcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FJIIZZZ)V

    return-object v13
.end method

.method public fixInvalidInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    if-lt v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->TAG:Ljava/lang/String;

    const-string v1, "fixInvalidInfo#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p1, -0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    :cond_0
    return-void
.end method

.method public forceSetCurrentPageIndex(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetCurrentPageIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    return-void
.end method

.method public getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    return v0
.end method

.method public getLeftTop()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLeft:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTop:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPageIndexObserverList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getPageLayoutColumn()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    return v0
.end method

.method public getPageLayoutRow()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    return v0
.end method

.method public getPagePan()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    return-object v0
.end method

.method public getPositionObserver()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    return v0
.end method

.method public init()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->loadPageLayoutSetting()V

    :cond_0
    return-void
.end method

.method public isEnabledDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mEnabledDarkTheme:Z

    return v0
.end method

.method public isPageLayoutFitToScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    return v0
.end method

.method public isReadyToRestore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mRestore:Z

    return v0
.end method

.method public isScrollVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    return v0
.end method

.method public isZoomLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    return v0
.end method

.method public loadPageLayoutDefaultForSingle()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    xor-int/2addr v0, v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    return-void
.end method

.method public loadPageLayoutSetting()V
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_layout_column"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    const-string v1, "settings_page_scroll_direction"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    return-void
.end method

.method public removePageIndexObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageIndexObserverList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBlockToSetCurrentPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mBlockToSetCurrentPage:Z

    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setCurrentPageIndex(IZ)V

    return-void
.end method

.method public setCurrentPageIndex(IZ)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mBlockToSetCurrentPage:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPageIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mViewUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;->goToPage(I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->notifyDataChanged()V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mEnabledDarkTheme:Z

    return-void
.end method

.method public setPageLayout(IIZZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    return-void
.end method

.method public setPageLayoutColumn(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    return-void
.end method

.method public setPageLayoutFitToScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    return-void
.end method

.method public setPageLayoutRow(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    return-void
.end method

.method public setPosition(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanX()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanY()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanX()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getContentPanY()F

    move-result v2

    invoke-interface {v0, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;->onPositionChanged(FFF)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    return-void
.end method

.method public setPositionObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPositionObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PositionObserver;

    return-void
.end method

.method public setRestoreFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mRestore:Z

    return-void
.end method

.method public setScrollVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    return-void
.end method

.method public setTotalPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    return-void
.end method

.method public setViewUpdater(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mViewUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;

    return-void
.end method

.method public setZoomLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocPageInfo{mTotalPageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTotalPageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentPageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mCurrentPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabledDarkTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mEnabledDarkTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPagePan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPagePan:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBlockToSetCurrentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mBlockToSetCurrentPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastOpenedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mLastOpenedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPageLayoutColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutColumn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageLayoutRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageLayoutFitToScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mPageLayoutFitToScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mScrollVertical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsZoomLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->mIsZoomLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
