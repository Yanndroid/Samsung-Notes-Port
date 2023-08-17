.class public Lcom/samsung/android/support/senl/docscan/common/Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BITMAP_SAMPLE_SIZE_RECTIFIED_IMAGE:I = 0x4

.field public static final BITMAP_SAMPLE_SIZE_THUMBNAIL:I = 0x4

.field public static final CAMERA_FRAGMENT:Ljava/lang/String; = "CameraFragment"

.field public static final DOC_SCAN_CACHE_DIR:Ljava/lang/String;

.field public static final DOC_SCAN_COMPRESS_QUALITY:I = 0x64

.field public static final DOC_SCAN_EDIT_PATH:Ljava/lang/String; = "edit"

.field public static final DOC_SCAN_FILE_PREFIX:Ljava/lang/String; = "scan_"

.field public static final DOC_SCAN_THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail"

.field public static final FOCUSING_SKIP_TIME:I = 0x1f4

.field public static final INTENT_PATH_TO_SAVE:Ljava/lang/String; = "INTENT_PATH_TO_SAVE"

.field public static final INTENT_SDOC_UUID:Ljava/lang/String; = "INTENT_SDOC_UUID"

.field public static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final KEY_DOC_SCAN_DATA_LIST:Ljava/lang/String; = "doc_scan_data_list"

.field public static final MAX_DOC_SCAN:I = 0x32

.field public static final MENU_SELECT_SKIP_TIME:I = 0x3e8

.field public static final PREF_DOCUMENT_SCAN:Ljava/lang/String; = "PREF_DOCUMENT_SCAN"

.field public static final PREF_KEY_CAMERA_FLASH_MODE:Ljava/lang/String; = "pref_camera_flash_mode"

.field public static final RECTIFY_LIST_FRAGMENT:Ljava/lang/String; = "RectifyListFragment"

.field public static final THUMBNAIL_COMPRESS_QUALITY:I = 0x5f


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/docscan/common/Constant;->DOC_SCAN_CACHE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
