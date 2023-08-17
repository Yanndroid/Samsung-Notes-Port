.class public Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormatResources;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    move v2, v1

    :goto_0
    sget-object v4, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v0, v2

    aget-object v6, v4, v2

    aget-object v6, v6, v1

    aput-object v6, v5, v1

    aget-object v5, v0, v2

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    aput-object v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
