.class public Lcom/samsung/android/penup/internal/response/ResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POSTFIX_LARGE:Ljava/lang/String; = "_large"

.field private static final POSTFIX_MEDIUM:Ljava/lang/String; = "_medium"

.field private static final RESPONSE_AFTER:Ljava/lang/String; = "after"

.field private static final RESPONSE_ARTIST_LIST:Ljava/lang/String; = "artistList"

.field private static final RESPONSE_ARTWORK_COUNT:Ljava/lang/String; = "artworkCount"

.field private static final RESPONSE_ARTWORK_ID:Ljava/lang/String; = "artworkId"

.field private static final RESPONSE_ARTWORK_LIST:Ljava/lang/String; = "artworkList"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "code"

.field private static final RESPONSE_COLLECTION_ID:Ljava/lang/String; = "collectionId"

.field private static final RESPONSE_COLLECTION_LIST:Ljava/lang/String; = "collectionList"

.field private static final RESPONSE_COLLECTION_NAME:Ljava/lang/String; = "collectionName"

.field private static final RESPONSE_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final RESPONSE_FAVORITED_COUNT:Ljava/lang/String; = "favoritedCount"

.field private static final RESPONSE_FAVORITE_COUNT:Ljava/lang/String; = "favoriteCount"

.field private static final RESPONSE_FILE_TYPE:Ljava/lang/String; = "fileType"

.field private static final RESPONSE_FILE_URL:Ljava/lang/String; = "fileUrl"

.field private static final RESPONSE_FOLLOWER_COUNT:Ljava/lang/String; = "followerCount"

.field private static final RESPONSE_FOLLOWING_COUNT:Ljava/lang/String; = "followingCount"

.field private static final RESPONSE_IMAGE_RATIO:Ljava/lang/String; = "imageRatio"

.field private static final RESPONSE_MESSAGE:Ljava/lang/String; = "message"

.field private static final RESPONSE_ORIGINAL_ARTWORK_ID:Ljava/lang/String; = "origArtworkId"

.field private static final RESPONSE_ORIGINAL_USER_ID:Ljava/lang/String; = "origUserId"

.field private static final RESPONSE_PAGINATION:Ljava/lang/String; = "pagination"

.field private static final RESPONSE_POST_COUNT:Ljava/lang/String; = "postCount"

.field private static final RESPONSE_REPOSTED_COUNT:Ljava/lang/String; = "repostedCount"

.field private static final RESPONSE_REPOST_COUNT:Ljava/lang/String; = "repostCount"

.field private static final RESPONSE_RESULT:Ljava/lang/String; = "result"

.field private static final RESPONSE_TAG_ID:Ljava/lang/String; = "tagId"

.field private static final RESPONSE_TAG_LIST:Ljava/lang/String; = "tagList"

.field private static final RESPONSE_TAG_NAME:Ljava/lang/String; = "tagName"

.field private static final RESPONSE_TITLE:Ljava/lang/String; = "title"

.field private static final RESPONSE_USER_ID:Ljava/lang/String; = "userId"

.field private static final RESPONSE_USER_IMAGE_URL:Ljava/lang/String; = "userImageUrl"

.field private static final RESPONSE_USER_NAME:Ljava/lang/String; = "userName"

.field public static sCode:I

.field public static sMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createArtist(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtistResource;
    .locals 2

    new-instance v0, Lcom/samsung/android/penup/model/ArtistResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/ArtistResource;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "userName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setName(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setDescription(Ljava/lang/String;)V

    const-string/jumbo v1, "userImageUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "postCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setPostCount(I)V

    const-string v1, "repostCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setRepostCount(I)V

    const-string v1, "repostedCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setRepostedCount(I)V

    const-string v1, "favoritedCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setFavoritedCount(I)V

    const-string v1, "followerCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtistResource;->setFollowerCount(I)V

    const-string v1, "followingCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/model/ArtistResource;->setFollowingCount(I)V

    return-object v0
.end method

.method private static createArtwork(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtworkResource;
    .locals 4

    new-instance v0, Lcom/samsung/android/penup/model/ArtworkResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/ArtworkResource;-><init>()V

    const-string v1, "artworkId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setLongTitle(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setLongDescription(Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setArtistId(Ljava/lang/String;)V

    const-string/jumbo v1, "userName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setArtistName(Ljava/lang/String;)V

    const-string v1, "origUserId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setOriginalArtistId(Ljava/lang/String;)V

    const-string v1, "origArtworkId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setOriginalArtworkId(Ljava/lang/String;)V

    const-string v1, "favoriteCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setFavoriteCount(I)V

    const-string v1, "collectionId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setCollectionId(Ljava/lang/String;)V

    const-string v1, "imageRatio"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/penup/model/ArtworkResource;->setImageRatio(D)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fileType"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_medium"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/ArtworkResource;->setThumbnailImageUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_large"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/model/ArtworkResource;->setLargeThumbnailImageUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createCollection(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/CollectionResource;
    .locals 2

    new-instance v0, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/CollectionResource;-><init>()V

    const-string v1, "collectionId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/CollectionResource;->setId(Ljava/lang/String;)V

    const-string v1, "collectionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/CollectionResource;->setName(Ljava/lang/String;)V

    const-string v1, "artworkCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/CollectionResource;->setArtworkCount(I)V

    const-string v1, "followerCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/model/CollectionResource;->setFollowerCount(I)V

    return-object v0
.end method

.method private static createNewCollection(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/CollectionResource;
    .locals 2

    new-instance v0, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/CollectionResource;-><init>()V

    const-string v1, "collectionId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/CollectionResource;->setId(Ljava/lang/String;)V

    const-string v1, "collectionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/model/CollectionResource;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createTag(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/TagResource;
    .locals 2

    new-instance v0, Lcom/samsung/android/penup/model/TagResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/TagResource;-><init>()V

    const-string/jumbo v1, "tagId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/TagResource;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "tagName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/TagResource;->setName(Ljava/lang/String;)V

    const-string v1, "artworkCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/model/TagResource;->setArtworkCount(I)V

    return-object v0
.end method

.method public static parseArtistListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/ResponseList;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseList;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "artistList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createArtist(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtistResource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/penup/internal/response/ResponseList;->addResource(Lcom/samsung/android/penup/model/Resource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setNextPageToken(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    :cond_1
    return-object p0
.end method

.method public static parseArtistResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/Response;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/Response;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createArtist(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtistResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/response/Response;->setResource(Lcom/samsung/android/penup/model/Resource;)V

    :cond_0
    return-object p0
.end method

.method public static parseArtworkListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/ResponseList;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseList;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "artworkList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createArtwork(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtworkResource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/penup/internal/response/ResponseList;->addResource(Lcom/samsung/android/penup/model/Resource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setNextPageToken(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    :cond_1
    return-object p0
.end method

.method public static parseArtworkResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/Response;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/Response;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createArtwork(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/ArtworkResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/response/Response;->setResource(Lcom/samsung/android/penup/model/Resource;)V

    :cond_0
    return-object p0
.end method

.method public static parseCollectionListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/ResponseList;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseList;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "collectionList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createCollection(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/CollectionResource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/penup/internal/response/ResponseList;->addResource(Lcom/samsung/android/penup/model/Resource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setNextPageToken(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    :cond_1
    return-object p0
.end method

.method public static parseCollectionResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/Response;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/Response;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createCollection(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/CollectionResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/response/Response;->setResource(Lcom/samsung/android/penup/model/Resource;)V

    :cond_0
    return-object p0
.end method

.method public static parseNewCollectionResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/Response;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/Response;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createNewCollection(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/CollectionResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/response/Response;->setResource(Lcom/samsung/android/penup/model/Resource;)V

    :cond_0
    return-object p0
.end method

.method public static parseTagListResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "Lcom/samsung/android/penup/model/TagResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/ResponseList;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/ResponseList;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "tagList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createTag(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/TagResource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/penup/internal/response/ResponseList;->addResource(Lcom/samsung/android/penup/model/Resource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setNextPageToken(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V

    :cond_1
    return-object p0
.end method

.method public static parseTagResponse(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "Lcom/samsung/android/penup/model/TagResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/penup/internal/response/Response;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/response/Response;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/penup/internal/response/ResponseParser;->createTag(Lorg/json/JSONObject;)Lcom/samsung/android/penup/model/TagResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/response/Response;->setResource(Lcom/samsung/android/penup/model/Resource;)V

    :cond_0
    return-object p0
.end method

.method private static setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/samsung/android/penup/model/Resource;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/samsung/android/penup/internal/response/Response<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sMessage:Ljava/lang/String;

    sget v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/penup/internal/response/Response;->setResponseResult(ILjava/lang/String;)V

    return-void
.end method

.method private static setCodeMessage(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/samsung/android/penup/model/Resource;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sMessage:Ljava/lang/String;

    sget v0, Lcom/samsung/android/penup/internal/response/ResponseParser;->sCode:I

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/penup/internal/response/ResponseList;->setResponseResult(ILjava/lang/String;)V

    return-void
.end method

.method private static setNextPageToken(Lorg/json/JSONObject;Lcom/samsung/android/penup/internal/response/ResponseList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/samsung/android/penup/internal/response/ResponseList<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pagination"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "after"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/internal/response/ResponseList;->setNextPageToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
