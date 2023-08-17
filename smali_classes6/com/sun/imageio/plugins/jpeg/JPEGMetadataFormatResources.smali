.class abstract Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# static fields
.field public static final commonContents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dqt"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "A Define Quantization Table(s) marker segment"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dqtable"

    aput-object v3, v2, v4

    const-string v3, "A single quantization table"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dht"

    aput-object v3, v2, v4

    const-string v3, "A Define Huffman Table(s) marker segment"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dhtable"

    aput-object v3, v2, v4

    const-string v3, "A single Huffman table"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dri"

    aput-object v3, v2, v4

    const-string v3, "A Define Restart Interval marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "com"

    aput-object v3, v2, v4

    const-string v3, "A Comment marker segment.  The user object contains the actual bytes."

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unknown"

    aput-object v3, v2, v4

    const-string v3, "An unrecognized marker segment.  The user object contains the data not including length."

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dqtable/elementPrecision"

    aput-object v3, v2, v4

    const-string v3, "The number of bits in each table element (0 = 8, 1 = 16)"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dgtable/qtableId"

    aput-object v3, v2, v4

    const-string v3, "The table id"

    aput-object v3, v2, v5

    const/16 v6, 0x8

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "dhtable/class"

    aput-object v6, v2, v4

    const-string v6, "Indicates whether this is a DC (0) or an AC (1) table"

    aput-object v6, v2, v5

    const/16 v6, 0x9

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "dhtable/htableId"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dri/interval"

    aput-object v3, v2, v4

    const-string v3, "The restart interval in MCUs"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "com/comment"

    aput-object v3, v2, v4

    const-string v3, "The comment as a string (used only if user object is null)"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unknown/MarkerTag"

    aput-object v2, v1, v4

    const-string v2, "The tag identifying this marker segment"

    aput-object v2, v1, v5

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method
