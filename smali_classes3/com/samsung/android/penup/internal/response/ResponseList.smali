.class Lcom/samsung/android/penup/internal/response/ResponseList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/samsung/android/penup/model/Resource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mNextPageToken:Ljava/lang/String;

.field private mResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mResponseResult:Lcom/samsung/android/penup/ResponseResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResourceList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mNextPageToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addResource(Lcom/samsung/android/penup/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mNextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResponseResult()Lcom/samsung/android/penup/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    return-object v0
.end method

.method public setNextPageToken(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mNextPageToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setResponseResult(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseList;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    return-void
.end method
