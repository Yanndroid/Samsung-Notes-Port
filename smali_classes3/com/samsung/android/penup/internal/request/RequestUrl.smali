.class public Lcom/samsung/android/penup/internal/request/RequestUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHARSET_UTF_8:Ljava/lang/String; = "utf-8"

.field public static final PATH_ARTIST:Ljava/lang/String; = "artist"

.field public static final PATH_ARTWORK:Ljava/lang/String; = "artwork"

.field public static final PATH_COLLECTION:Ljava/lang/String; = "collection"

.field public static final PATH_FEED:Ljava/lang/String; = "feed"

.field public static final PATH_FOLLOWER:Ljava/lang/String; = "follower"

.field public static final PATH_FOLLOWING:Ljava/lang/String; = "following"

.field public static final PATH_ME:Ljava/lang/String; = "me"

.field public static final PATH_POPULAR:Ljava/lang/String; = "popular"

.field public static final PATH_PROFILE:Ljava/lang/String; = "profile"

.field public static final PATH_TAG:Ljava/lang/String; = "tag"

.field public static final QUERY_FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final QUERY_FIELD_AFTER:Ljava/lang/String; = "after"

.field public static final QUERY_FIELD_CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final QUERY_FIELD_LIMIT:Ljava/lang/String; = "limit"

.field public static final QUERY_FIELD_SCOPE:Ljava/lang/String; = "scope"

.field public static final QUERY_FILED_TYPE:Ljava/lang/String; = "type"

.field public static final QUERY_VALUE_POST:Ljava/lang/String; = "post"

.field public static final QUERY_VALUE_REPOST:Ljava/lang/String; = "repost"


# instance fields
.field private final BASE_URL:Ljava/lang/String;

.field private mQueryString:Z

.field private mRequestUrl:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->BASE_URL:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mQueryString:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addQueryString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mQueryString:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mQueryString:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestUrl;->mRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
