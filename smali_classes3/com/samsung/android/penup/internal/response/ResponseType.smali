.class public final enum Lcom/samsung/android/penup/internal/response/ResponseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/penup/internal/response/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum ARTWORK:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum ARTWORK_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum COLLECTION:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum COLLECTION_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum NEW_COLLECTION:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum POPULAR_ARTWORK_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum TAG:Lcom/samsung/android/penup/internal/response/ResponseType;

.field public static final enum TAG_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;


# instance fields
.field private mIsListType:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v1, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v3, "ARTWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTWORK:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v3, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v5, "COLLECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/samsung/android/penup/internal/response/ResponseType;->COLLECTION:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v5, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v7, "NEW_COLLECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/samsung/android/penup/internal/response/ResponseType;->NEW_COLLECTION:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v7, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v9, "TAG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/samsung/android/penup/internal/response/ResponseType;->TAG:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v9, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v11, "ARTIST_LIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v11, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v13, "ARTWORK_LIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTWORK_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v13, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v15, "COLLECTION_LIST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/samsung/android/penup/internal/response/ResponseType;->COLLECTION_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v15, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v14, "TAG_LIST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/samsung/android/penup/internal/response/ResponseType;->TAG_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    new-instance v14, Lcom/samsung/android/penup/internal/response/ResponseType;

    const-string v12, "POPULAR_ARTWORK_LIST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v4}, Lcom/samsung/android/penup/internal/response/ResponseType;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/samsung/android/penup/internal/response/ResponseType;->POPULAR_ARTWORK_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/penup/internal/response/ResponseType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/samsung/android/penup/internal/response/ResponseType;->$VALUES:[Lcom/samsung/android/penup/internal/response/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/penup/internal/response/ResponseType;->mIsListType:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/penup/internal/response/ResponseType;
    .locals 1

    const-class v0, Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/penup/internal/response/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/penup/internal/response/ResponseType;
    .locals 1

    sget-object v0, Lcom/samsung/android/penup/internal/response/ResponseType;->$VALUES:[Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-virtual {v0}, [Lcom/samsung/android/penup/internal/response/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/penup/internal/response/ResponseType;

    return-object v0
.end method


# virtual methods
.method public isResponseListType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/penup/internal/response/ResponseType;->mIsListType:Z

    return v0
.end method
