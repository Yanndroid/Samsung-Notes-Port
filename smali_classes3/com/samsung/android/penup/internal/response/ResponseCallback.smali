.class public Lcom/samsung/android/penup/internal/response/ResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/lang/String;

.field private mResponseResult:Lcom/samsung/android/penup/ResponseResult;

.field private mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/ResponseResult;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    iput-object p1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/ResponseResult;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    iput-object p1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    return-void
.end method

.method private sendErrorForResource()V
    .locals 4

    sget v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/samsung/android/penup/ResponseResult;

    sget-object v3, Lcom/samsung/android/penup/internal/response/ResponseParser;->sMessage:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v2, 0x3e8

    const-string v3, "The internal server error occurred."

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    :goto_0
    return-void
.end method

.method private sendErrorForResourceList()V
    .locals 4

    sget v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/samsung/android/penup/ResponseResult;

    sget-object v3, Lcom/samsung/android/penup/internal/response/ResponseParser;->sMessage:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-interface {v0, v2, v1, v1}, Lcom/samsung/android/penup/ResourceListCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v2, 0x3e8

    const-string v3, "The internal server error occurred."

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-interface {v2, v0, v1, v1}, Lcom/samsung/android/penup/ResourceListCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, v2, v2}, Lcom/samsung/android/penup/ResourceListCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sMessage:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/penup/internal/response/ResponseCallback$1;->$SwitchMap$com$samsung$android$penup$internal$response$ResponseType:[I

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseTagListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseCollectionListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseArtworkListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseArtistListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/penup/ResourceListCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseCallback;->sendErrorForResourceList()V

    goto :goto_2

    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseTagResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResource()Lcom/samsung/android/penup/model/Resource;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/TagResource;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseNewCollectionResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResource()Lcom/samsung/android/penup/model/Resource;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/CollectionResource;

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseCollectionResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResource()Lcom/samsung/android/penup/model/Resource;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/CollectionResource;

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseArtworkResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResource()Lcom/samsung/android/penup/model/Resource;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/ArtworkResource;

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResponse:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->parseArtistResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/response/ResponseCallback;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResponseResult()Lcom/samsung/android/penup/ResponseResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/Response;->getResource()Lcom/samsung/android/penup/model/Resource;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/ArtistResource;

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseCallback;->sendErrorForResource()V

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
