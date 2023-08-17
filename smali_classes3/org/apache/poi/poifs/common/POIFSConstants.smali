.class public interface abstract Lorg/apache/poi/poifs/common/POIFSConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIG_BLOCK_MINIMUM_DOCUMENT_SIZE:I = 0x1000

.field public static final DIFAT_SECTOR_BLOCK:I = -0x4

.field public static final END_OF_CHAIN:I = -0x2

.field public static final FAT_SECTOR_BLOCK:I = -0x3

.field public static final LARGER_BIG_BLOCK_SIZE:I = 0x1000

.field public static final LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field public static final LARGEST_REGULAR_SECTOR_NUMBER:I = -0x5

.field public static final OOXML_FILE_HEADER:[B

.field public static final PROPERTY_SIZE:I = 0x80

.field public static final RAW_XML_FILE_HEADER:[B

.field public static final SMALLER_BIG_BLOCK_SIZE:I = 0x200

.field public static final SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field public static final SMALL_BLOCK_SIZE:I = 0x40

.field public static final UNUSED_BLOCK:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/16 v1, 0x200

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;-><init>(IS)V

    sput-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/16 v1, 0x1000

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;-><init>(IS)V

    sput-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->OOXML_FILE_HEADER:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->RAW_XML_FILE_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x3ct
        0x3ft
        0x78t
        0x6dt
        0x6ct
    .end array-data
.end method
