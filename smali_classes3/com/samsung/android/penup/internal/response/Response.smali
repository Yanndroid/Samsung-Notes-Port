.class Lcom/samsung/android/penup/internal/response/Response;
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
.field private mResource:Lcom/samsung/android/penup/model/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mResponseResult:Lcom/samsung/android/penup/ResponseResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/Response;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/Response;->mResource:Lcom/samsung/android/penup/model/Resource;

    return-void
.end method


# virtual methods
.method public getResource()Lcom/samsung/android/penup/model/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/Response;->mResource:Lcom/samsung/android/penup/model/Resource;

    return-object v0
.end method

.method public getResponseResult()Lcom/samsung/android/penup/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/Response;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    return-object v0
.end method

.method public setResource(Lcom/samsung/android/penup/model/Resource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/penup/model/Resource;->clone()Lcom/samsung/android/penup/model/Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/penup/internal/response/Response;->mResource:Lcom/samsung/android/penup/model/Resource;

    return-void
.end method

.method public setResponseResult(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/Response;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    return-void
.end method
