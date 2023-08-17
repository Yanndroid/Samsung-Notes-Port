.class public Lcom/samsung/android/sdk/composer/search/SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isFills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndex:I

.field private rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->pageIndex:I

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->isFills:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->rects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getIsFills()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->isFills:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->pageIndex:I

    return v0
.end method

.method public getRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/search/SearchData;->rects:Ljava/util/ArrayList;

    return-object v0
.end method
